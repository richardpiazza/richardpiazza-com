import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Richard Piazza"
    var url = URL(string: "https://richardpiazza.com")!
    var builtInIconsEnabled = true

    var author = "Richard Piazza"

    var homePage = Home()
    var tagPage = Tags()
    var theme = MyTheme()
    
    var pages: [any StaticPage] = [
        About(),
        Apps(),
        Blog()
    ]
    
    var layouts: [any ContentPage] = [
        ContentLayout()
    ]
}
