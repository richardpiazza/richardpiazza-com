import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                Navigation()
                
                page.body

                IgniteFooter()
            }
        }
    }
}
