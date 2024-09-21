import Foundation
import Ignite

struct Home: StaticPage {
    var title: String = "Home"
    
    func body(context: PublishingContext) -> [any BlockElement] {
        Section {
            Image("/images/Profile.jpg", description: "It's me!")
                .resizable()
                .width(2)
            
            Section {
                Text("Richard is a mobile engineer with over a decade of experience ranging from solo informational apps to multi-device/multi-platform real-time IoT solutions. When he gets the opportunity, he enjoys contributing to open-source swift projects as well as helping others to level-up their skills and knowledge.")
                    .font(.body)
                    .width(12)
                
                Text {
                    "On his journey from there to here, Richard found some time to become a certified chef and teaches self-preservation martial arts utilizing boxing & Brazilian jiu-jitsu "
                    Link("Crazy Monkey Twin Cities", target: "https://crazymonkeytwincities.com")
                 }
                .font(.body)
                .width(12)
            }
            .width(10)
        }
        .margin(.all, .extraLarge)
        
        Section {
            Text("Some of my Apps…")
                .font(.title5)
                .width(12)
            
            Image("/images/Bakeshop.png", description: "Bakeshop: The Indispensable Recipe Tool")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/Apps#Bakeshop\";")
                }
            
            Image("/images/Brainfog.png", description: "Brainfog: A Puzzle Game")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/Apps#Brainfog\";")
                }
            
            Image("/images/Dynumite.png", description: "Dynumite: A Dynu.com DNS Updater")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/Apps#Dynumite\";")
                }
            
            Image("/images/Lingua.png", description: "Lingua: Translation String Manager")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/Apps#Lingua\";")
                }
        }
        .padding(.vertical, .medium)
    }
}
