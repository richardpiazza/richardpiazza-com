import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "Blog"
    
    func body(context: PublishingContext) -> [any BlockElement] {
        Section {
            for content in context.allContent.sorted(by: {$0.date > $1.date }) {
                ContentPreview(for: content)
                    .margin(.vertical, .medium)
                    .width(4)
            }
        }
    }
}
