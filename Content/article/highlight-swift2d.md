---
date: 2021-03-21 15:14
description: Wouldn't it be nice if the data structures for CGRect, CGPoint, and CGSize where a part of the core swift language itself, just like `String` or `Int`? Yes, it would…
image: /images/Swift2d.png
tags: Swift, GitHub, Highlight
layout: ContentLayout
published: true
---

# Highlight: Swift2D

The _swift_ language continues to impress me as it grows. GitHub is full of projects direct from Apple and others that add many features that speed up development on new and old projects alike. ([Swift Argument Parser](https://github.com/apple/swift-argument-parser), [Swift Algorithms](https://github.com/apple/swift-algorithms), [AsyncHTTPClient](https://github.com/swift-server/async-http-client) just to name a few.)

One thing that I've found myself having to do when writing cross-platform swift code is to use compiler definitions to do conditional imports for some data structures: for instance `CGRect`, `CGPoint`, and `CGSize`. These three are all a part of `CoreGraphics` which is made available through `UIKit` & `SwiftUI` when on Apple/Darwin systems. But they are a part of `Foundation` on Linux. This leads to having extra logic at the top of many source files:

```swift
#if canImport(UIKit) // or canImport(ObjectiveC), or os() checks
import UIKit // or CoreGraphics, or SwiftUI
#else
import Foundation
#endif
```

Wouldn't it be nice if those structures where a part of the core language itself, just like `String` or `Int`? Yes, it would... but then you start wander off the path of what would be considered _core_ to the language. The next best thing is to at least have a way to provide these _relatively_ simple, low-level data structures without needing to do the import check.

This is where [Swift2D](https://github.com/richardpiazza/Swift2D) comes in. It's a re-implementation of the data structures `Rect`, `Point`, and `Size`, but it's only using primitive swift types, so there is no need to determine system compatibility when using it! It's not as complete as the `Foundation`/`CoreGraphics` implementations, but it has the features most needed.

Give it a try in your next project, and if you find something missing, feel free to submit a pull request. Community feedback and support helps us all!

![Swift2D](/images/Swift2D.png)
