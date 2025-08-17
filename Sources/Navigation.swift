import Foundation
import Ignite

struct Navigation: HTML {
    var body: some HTML {
        NavigationBar(logo: "Richard Piazza") {
            Link("About", target: "/about")
            Link("Apps", target: "/apps")
            Link("Blog", target: "/blog")
            
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
        .ignorePageGutters()
    }
}
