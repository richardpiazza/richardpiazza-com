import Foundation
import Ignite

struct ContentLayout: ContentPage {
    func body(content: Content, context: PublishingContext) -> [any BlockElement] {
        Text(content.title)
        
        Text(content.description)
        
        Text(content.body)
    }
}
