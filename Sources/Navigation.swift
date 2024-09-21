import Foundation
import Ignite

struct Navigation: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: "Richard Piazza") {
            Link("About", target: About())
            Link("Apps", target: Apps())
            Link("Blog", target: Blog())
            
            Dropdown("@richardpiazza") {
                Link("GitHub", target: "https://github.com/richardpiazza")
                Link("LinkedIn", target: "https://linkedin.com/in/richardpiazza")
                Link("Mastodon", target: "https://mastodon.social/@richardpiazza")
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.darkSlateBlue)
        .position(.stickyTop)
    }
}
