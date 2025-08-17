import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Grid {
            Image("/images/Profile.jpg", description: "It's me!")
                .resizable()
                .width(2)
            
            Section {
                Text("Richard is a software engineer with over a decade of experience ranging from solo informational apps to multi-device/multi-platform real-time IoT solutions. When he gets the opportunity, he enjoys contributing to open-source swift projects as well as helping others to level-up their skills and knowledge.")
                    .font(.body)
                
                Text {
                    "On his journey from there to here, Richard found some time to become a certified chef and teaches self-preservation martial arts utilizing boxing & Brazilian jiu-jitsu "
                    Link("Crazy Monkey Twin Cities", target: "https://crazymonkeytwincities.com")
                }
                .font(.body)
            }
            .width(10)
        }
        .margin(.all, .large)
        
        Text("Here's a few of the apps I've been working on…")
            .font(.title5)
        
        Grid {
            Image("/images/Lingua.png", description: "Lingua: Translation String Manager")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/apps#Lingua\";")
                }
            
            Image("/images/Bakeshop.png", description: "Bakeshop: The Indispensable Recipe Tool")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/apps#Bakeshop\";")
                }
            
            Image("/images/Brainfog.png", description: "Brainfog: A Puzzle Game")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/apps#Brainfog\";")
                }
            
            Image("/images/Dynumite.png", description: "Dynumite: A Dynu.com DNS Updater")
                .resizable()
                .onClick {
                    CustomAction("window.location.href=\"/apps#Dynumite\";")
                }
        }
    }
}
