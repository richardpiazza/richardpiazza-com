import Foundation
import Ignite

struct Apps: StaticPage {
    var title = "Apps"
    
    func body(context: PublishingContext) -> [any BlockElement] {
        Section {
            Image("/images/Bakeshop.png", description: "Bakeshop: The Indispensable Recipe Tool")
                .resizable()
                .width(3)
            
            Section {
                Text("Bakeshop")
                    .font(.title3)
                    .width(12)
                    .margin(.top, .large)
                    .id("Bakeshop")
                
                Text("The indispensable recipe tool for professional chefs, culinary students and the home culinarian.")
                    .font(.body)
                    .width(12)
                    
                Text("Bakeshop is more than just a recipe storage app. Bakeshop understands formulas and it uses volume/mass ratios for each ingredient to perform complex conversions and scaling.")
                    .font(.body)
                    .width(12)
                
                Text {
                    Link("Provide Feedback", target: "mailto:richard@richardpiazza.com?subject=Bakeshop%20Feedback")
                }
                .width(12)
                
                Accordion {
                    Item("Privacy Policy") {
                        List {
                            Text("ALL INFORMATION ENTERED IN THE APP IS STORED ON YOUR DEVICE (AND IN  ICLOUD WHEN ENABLED).")
                                .font(.body)
                                .foregroundStyle(.secondary)

                            Text("NO PERSONALLY IDENTIFIABLE INFORMATION IS COLLECTED OR USED IN ANY WAY.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .width(12)
            }
            .width(9)
        }
        
        Section {
            Image("/images/Brainfog.png", description: "Brainfog: A Puzzle Game")
                .resizable()
                .width(3)
            
            Section {
                Text("Brainfog")
                    .font(.title3)
                    .width(12)
                    .margin(.top, .large)
                    .id("Brainfog")
                
                Text("Brainfog: A Puzzle Game is based on a popular card game. The goal of the game is to select three cards which form a 'set'. Each card has four unique characteristics: Shape, Color, Fill (shading), and Number. A 'set' is complete when each of the three cards have all of the characteristics - when looked at one by one - are all matching or all different.")
                    .font(.body)
                    .width(12)
                    
                Text("Challenge yourself! Challenge your friends! Available on iOS, tvOS, and macOS.")
                    .font(.body)
                    .width(12)
                
                Text {
                    Link("Provide Feedback", target: "mailto:richard@richardpiazza.com?subject=Brainfog%20Feedback")
                }
                .width(12)
                
                Accordion {
                    Item("Privacy Policy") {
                        List {
                            Text("THE APP DOES NOT COLLECT OR UTILIZE ANY DEVICE OR USER INFORMATION.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .width(12)
            }
            .width(9)
        }
        
        Section {
            Image("/images/Dynumite.png", description: "Dynumite: A Dynu.com DNS Updater")
                .resizable()
                .width(3)
            
            Section {
                Text("Dynumite")
                    .font(.title3)
                    .width(12)
                    .margin(.top, .large)
                    .id("Dynumite")
                
                Text("Dynumite keeps your Dynu.com hostname/location up to date with your current public IP Address. This SwiftUI-powered macOS app sits in your status bar to always keep you up to date.")
                    .font(.body)
                    .width(12)
                
                Text {
                    Link("Provide Feedback", target: "mailto:richard@richardpiazza.com?subject=Dynumite%20Feedback")
                }
                .width(12)
                
                Accordion {
                    Item("Privacy Policy") {
                        List {
                            Text("YOUR IP ADDRESS CAN BE RETRIEVED USING IPIFY.ORG. THEIR PAGE STATES THAT NO VISITOR INFORMATION IS EVER LOGGED.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("YOUR IP ADDRESS CAN BE RETRIEVED USING IFCONFIG.CO. THEIR PAGE HAS NO DIRECT POLICY.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("YOUR USERNAME, PASSWORD, HOSTNAME, LOCATION, AND IP ADDRESS ARE STORED ON YOUR DEVICE. THE USERNAME AND PASSWORD ARE STORED SECURELY USING THE KEYCHAIN SERVICE.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("YOUR USERNAME, PASSWORD, HOSTNAME, LOCATION, AND IP ADDRESS ARE USED TO UPDATE YOUR ACCOUNT ON DYNU.COM. THEIR PRIVACY POLICY CAN BE FOUND HERE.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("DYNUMITE DOES NOT USE THE INFORMATION YOU PROVIDE FOR ANY OTHER PURPOSE, BEYOND THE INTENDED USE OF THE APP.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .width(12)
            }
            .width(9)
        }
        
        Section {
            Image("/images/Lingua.png", description: "Lingua: Translation String Manager")
                .resizable()
                .width(3)
            
            Section {
                Text("Lingua")
                    .font(.title3)
                    .width(12)
                    .margin(.top, .large)
                    .id("Lingua")
                
                Text {
                    Emphasis {
                        Strong {
                            "In Development"
                        }
                    }
                }
                .font(.body)
                .width(12)
                
                Text("Lingua is an app for developers who need to manage translated strings.")
                    .font(.body)
                    .width(12)
                
                Text {
                    Link("Provide Feedback", target: "mailto:richard@richardpiazza.com?subject=Lingua%20Feedback")
                }
                .width(12)
                
                Accordion {
                    Item("Privacy Policy") {
                        List {
                            Text("THE APP DOES NOT COLLECT OR UTILIZE ANY DEVICE OR USER INFORMATION.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .width(12)
            }
            .width(9)
        }
        
        Section {
            Image("/images/PocketBot.png", description: "Pocket Bot: Xcode Server In Your Pocket")
                .resizable()
                .width(3)
            
            Section {
                Text("Pocket Bot")
                    .font(.title3)
                    .width(12)
                    .margin(.top, .large)
                
                Text {
                    Emphasis {
                        Strong {
                            "Retired"
                        }
                    }
                }
                .font(.body)
                .width(12)
                
                Text("Pocket Bot for \"Xcode Server\" brings the Xcode Server CI to iOS and tvOS. Review bots, integrations, commits, build errors and more.")
                    .font(.body)
                    .width(12)
                
                Accordion {
                    Item("Privacy Policy") {
                        List {
                            Text("YOUR SERVER ('XCODE SERVER’) HOSTNAME IS STORED USING THE ICLOUD KEY-VALUE STORAGE. THIS INFORMATION CAN ONLY BE ACCESSED USING THE APP THAT IS USED TO WRITE THE INFORMATION.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("ANY CREDENTIALS (USERNAME / PASSWORD) THAT ARE ASSOCIATED TO ANY SAVED SERVERS ARE SECURELY STORED USING THE SYSTEM KEYCHAIN.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("ALL BOT, INTEGRATION, STATS THAT ARE RETRIEVED FROM THE XCODE SERVER API ARE STORED LOCALLY ON DEVICE USING THE COREDATA FRAMEWORK.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                            
                            Text("NONE OF THIS INFORMATION OR OTHER PERSONALLY IDENTIFIABLE INFORMATION IS EVER TRANSMITTED BACK TO THE DEVELOPER OR THIRD PARTIES.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .width(12)
            }
            .width(9)
        }
        
        Section {
            Image("/images/CrazyMonkey.png", description: "Crazy Monkey: Modern Martial Arts")
                .resizable()
                .width(3)
            
            Section {
                Text("Crazy Monkey Twin Cities")
                    .font(.title3)
                    .width(12)
                    .margin(.top, .large)
                
                Text {
                    Emphasis {
                        Strong {
                            "Retired"
                        }
                    }
                }
                .font(.body)
                .width(12)
                
                Text("Information, Classes Schedules, A Boxing Timer and more!")
                    .font(.body)
                    .width(12)
                
                Accordion {
                    Item("Privacy Policy") {
                        List {
                            Text("THE APP DOES NOT COLLECT OR UTILIZE ANY DEVICE OR USER INFORMATION.")
                                .font(.body)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .width(12)
            }
            .width(9)
        }
    }
}
