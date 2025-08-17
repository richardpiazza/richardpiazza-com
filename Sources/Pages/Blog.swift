import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "Blog"
    
    @Environment(\.articles) var articles
    
    var body: some HTML {
        Grid(alignment: .top) {
            ForEach(articles.all.sorted(by: { $0.date > $1.date })) { article in
                ArticlePreview(for: article)
                    .margin(.vertical, .medium)
                    .width(4)
            }
        }
    }
}
