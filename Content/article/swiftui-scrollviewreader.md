---
date: 2021-01-31 13:09
description: Apple released the `ScrollViewReader` along with other SwiftUI improvements at WWDC 2020. The ScrollViewReader allows you to interact with the current scroll position of a `ScrollView`. Let’s take a look at one usage for it.
tags: SwiftUI
layout: ContentLayout
published: true
---
# SwiftUI ScrollViewReader

I recently undertook a rewrite of most of the user interface in my app [**Pocket Bot**](https://apps.apple.com/us/app/pocket-bot-for-xcode-server/id1024397029). This presented me with the opportunity to start the adoption of SwiftUI. There were a few stumbling blocks and lessons learned, but overall went rather smoothly. That is until I started looking into updating my tvOS version.

When running on tvOS, _Pocket Bot_, runs as a single dashboard, bringing together all of the information from multiple Xcode Servers. Often, the content needing to be displayed is larger than the space available. I originally solved this by implementing a `Timer` that would automatically scroll a `UITableView` every few seconds as needed. This was one of the biggest hurdles I had to overcome moving to SwiftUI.

Luckily though, Apple released the `ScrollViewReader` along with other SwiftUI improvements at WWDC 2020. The [ScrollViewReader](https://developer.apple.com/documentation/swiftui/scrollviewreader) allows you to interact with the current scroll position of a `ScrollView`.

So let's take a look at how I solved this translation of functionality by taking a look at `AutoRevealView`:

First, lets start with a simple source of data.
```swift
enum Alphabet: String, CaseIterable, Identifiable {
    case a, b, c, d, e, f, g, h, i, j, k, l, m, n, o,
    p, q, r, s, t, u, v, w, x, y, z
    
    var id: String { rawValue }
}
```

Next, we'll define our view.
```swift
struct AutoRevealView<Content: Identifiable>: View {
    let contents: [Content]

    init(_ contents: [Content]) {
        self.contents = contents
    }

    var body: some View {
        Text("Hello World")
    }
}
```

Notice here, we are using Swift generics to allow for any content to be presented - as long as it conforms to the `Identifiable` protocol (more on that later).

If we were to preview this view, it would display the static text "Hello World" reguardless of the content, so let's adapt the `body` to display our content.

```swift
struct AutoRevealView<Content: Identifiable>: View {
    let contents: [Content]

    init(_ contents: [Content]) {
        self.contents = contents
    }

    var body: some View {
        VStack {
            ForEach(contents, id: \.id) { content in
                Text("\(content.id.hashValue)")
            }
        }
    }
}
```

This will display the correct number of rows for our content, but it's not very interesting. Right now, all we know is that our `Content` conforms to `Identifiable`, meaning that it has an `id` property. In our `ForEach`, we don't even have a way of determining if the id is a `String`, or `Int`, or something else.

Since we want to be able to reuse this code for any type of content, we're going to need a way to provide a `View` that knows more about the `Content` being provided. Let's extend our code to add another parameter - a @ViewBuilder - that will take one parameter: an instance of our `Content`.

```swift
struct AutoRevealView<Content: Identifiable, ContentView: View>: View {
    let contents: [Content]
    let contentView: (_ content: Content) -> ContentView

    init(
        _ contents: [Content],
        @ViewBuilder contentView: @escaping (_ content: Content) -> ContentView
    ) {
        self.contents = contents
        self.contentView = contentView
    }

    var body: some View {
        ScrollView {
            ForEach(contents, id: \.id) { content in
                contentView(content)
            }
        }
    }
}
```

The instantiation of our View would now look something like this:

```swift
let view = AutoRevealView(Alphabet.allCases) { content in
    VStack {
        Text(content.rawValue)
        Divider()
    }
}
```

Because of the generics, we know the type of `Content` being provided, and that content type can be referenced in the block being provided to construct a view. Now we're getting somewhere!

Let's keep going. It's time to introduce our new friend `ScrollViewReader`. Do you remember how `Content` had to conform to `Identifiable`? Well that's to our advantage here. We can use unique ids with `ScrollViewReader` to have SwiftUI modify the scroll view position. So, we'll add a way to track the current ID and what happens when that id changes.

```swift
struct AutoRevealView<Content: Identifiable, ContentView: View>: View {
    let contents: [Content]
    let contentView: (_ content: Content) -> ContentView
    @State var id: Content.ID? = nil

    init(
        _ contents: [Content],
        @ViewBuilder contentView: @escaping (_ content: Content) -> ContentView
    ) {
        self.contents = contents
        self.contentView = contentView
    }

    var body: some View {
        ScrollViewReader { reader in
            ScrollView {
                ForEach(contents, id: \.id) { content in
                    contentView(content)
                }
            }.onChange(of: id, perform: { _ in
                if let contentId = id {
                    withAnimation() {
                        reader.scrollTo(contentId, anchor: .top)
                    }
                }
            })
        }
    }
}
```

Wait, wasn't this called the _Auto_ RevealView? That's not very automatic. In order to achieve that, we need one final piece: a Timer to allow for the incrementing of the current id.

```swift
struct AutoRevealView<Content: Identifiable, ContentView: View>: View {
    let contents: [Content]
    let contentView: (_ content: Content) -> ContentView
    @State var id: Content.ID? = nil
    let timer: Publishers.Autoconnect<Timer.TimerPublisher>

    init(
        _ contents: [Content],
        @ViewBuilder contentView: @escaping (_ content: Content) -> ContentView
    ) {
        self.contents = contents
        self.contentView = contentView
        timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    }

    var body: some View {
        ScrollViewReader { reader in
            ScrollView {
                ForEach(contents, id: \.id) { content in
                    contentView(content)
                }
            }.onChange(of: id, perform: { _ in
                if let contentId = id {
                    withAnimation() {
                        reader.scrollTo(contentId, anchor: .top)
                    }
                }
            })
        }
        .onReceive(timer, perform: { _ in
            scrollToNext()
        })
    }
    
    func scrollToNext() {
        guard let contentId = id else {
            id = contents.first?.id
            return
        }
        
        guard let index = contents.firstIndex(where: { $0.id == contentId }) else {
            id = contents.first?.id
            return
        }
        
        if contents.count > index + 1 {
            id = contents[index + 1].id
        } else {
            id = contents[0].id
        }
    }
}
```

There we go! `.onReceive` will be trigger each time the Timer fires, which in turn updates the `@State id`. When a state variable is changed, SwiftUI does it's thing and re-creates our view.

---

I hope you learned a little from this. If you have any questions or comments feel free to get in touch. Happy Coding!
