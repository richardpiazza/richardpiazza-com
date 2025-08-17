import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Richard Piazza"
    var url = URL(static: "https://richardpiazza.com")
    var builtInIconsEnabled = true

    var author = "Richard Piazza"

    var homePage = Home()
    var layout = MainLayout()
    
    var staticPages: [any StaticPage] = [
        About(),
        Apps(),
        Blog(),
    ]
    
    var articlePages: [any ArticlePage] = [
        ContentLayout(),
    ]
}
