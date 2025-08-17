import Foundation
import Ignite

struct ContentLayout: ArticlePage {
    var body: some HTML {
        Text(article.title)
            .font(.title1)
        Text(article.text)
            .font(.body)
    }
}
