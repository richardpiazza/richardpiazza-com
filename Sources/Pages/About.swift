import Foundation
import Ignite

struct About: StaticPage {
    var title = "About"
    
    func body(context: PublishingContext) -> [any BlockElement] {
        Section {
            Text("2022-Current")
                .width(2)
            
            Section {
                Text("Nice Healthcare")
                    .font(.title5)
                    .width(12)
                
                Text("Staff Software Engineer in charge of all things iOS, macOS & Android.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2021-2022")
                .width(2)
            
            Section {
                Text("HomeValet")
                    .font(.title5)
                    .width(12)
                
                Text("Lead iOS engineer responsible for a complete modernization of the HV Customer application. This work included adopting SwiftUI, Combine pipelines, and the latest concurrency feature async/await. Broad depth of modularizing the codebase and developing a highly testable verification experience; including emulating resources like Bluetooth, Location, and Local/Remote Notifications.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2018-2021")
                .width(2)
            
            Section {
                Text("Nerdery")
                    .font(.title5)
                    .width(12)
                
                Text("Senior Developer focusing on iOS projects serving a range of clients and industries. As a project lead I've enjoyed guiding clients through the design and decision making process to make some really great mobile experiences. At the same time, I like to help improve internal systems, processes, and architecture, to raise the knowledge, quality, and abilities of the organization as a whole.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2018")
                .width(2)
            
            Section {
                Text("Minneapolis Jewish Federation")
                    .font(.title5)
                    .width(12)
                
                Text("Volunteer Technology Consultant - Database Committee")
                    .font(.body)
                    .width(12)
                
                Text("SWEET CHOCOLAT")
                    .font(.title5)
                    .width(12)
                
                Text("Web/Technology Consultant")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2017")
                .width(2)
            
            Section {
                Text("Innocence Project of Minnesota (IPMN)")
                    .font(.title5)
                    .width(12)
                
                Text("Volunteer Web/Tech Consultant")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2011-2015")
                .width(2)
            
            Section {
                Text("Lateral, Perth Australia")
                    .font(.title5)
                    .width(12)
                
                Text("Senior Mobile Applications Consultant (SMAC)")
                    .font(.body)
                    .width(12)
                
                Text("As a lead software developer (iOS/Android/HTML), gained extensive experience on projects across a wide range of industries including: agriculture, education, health, government, and retail. This diverse background has given me a unique perspective into today’s need for mobile apps to deeply integrate with the rich web and cloud services. Expertise goes beyond building the software to mobile devices and device management, having achieved the qualification of Apple Product Profession and the inclusion in the ACN (Apple Consultants Network) for Mobility Solutions and Mobility Deployment.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2011")
                .width(2)
            
            Section {
                Text("The Old Brewery, Perth Australia")
                    .font(.title5)
                    .width(12)
                
                Text("Chef de Partie")
                    .font(.body)
                    .width(12)
                
                Text("Developed skills across multiple stations in the kitchen including sauté, garde manger, pastry, and grill. Expanded knowledge and technique in meat cookery.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2010-2018")
                .width(2)
            
            Section {
                Text("Independent iOS Developer")
                    .font(.title5)
                    .width(12)
                
                Text("Published several of my own apps to the Apple App Store that deal heavily with some of Apple’s core technologies & ideologies, including: CoreData, CloudKit, REST API’s, NSOperations (Operation based programing), and Protocol Oriented Programing.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2007-2009")
                .width(2)
            
            Section {
                Text("The Arts Institutes International Minnesota")
                    .font(.title5)
                    .width(12)
                
                Text("A.A.S. Culinary Arts")
                    .font(.body)
                    .width(12)
                
                Text("Educated in Basic Culinary Skills, Baking and Pastry Skills, American Regional Cuisine, International &, Asian Cuisine, Garde Manger, Purchasing, Cost Control, Management & Supervision, and Operations. Additional courses outside of curriculum: Advanced Baking, Artisan Breads.")
                    .font(.body)
                    .width(12)
                
                Text("Teacher Assistant in both Basic Culinary Skills and Purchasing & Cost Control, 2008 - 2009; Student Volunteer for Great American Bake Sale, 2009; Student Assistant with Art Institutes International Summer Teen Workshop, 2008, 2009")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2004-2007")
                .width(2)
            
            Section {
                Text("The Gurstel Law Firm")
                    .font(.title5)
                    .width(12)
                
                Text("Networking Systems Administrator")
                    .font(.body)
                    .width(12)
                
                Text("Setup and maintained key components of Desktop & Server architecture, including but not limited to: AD Domains, GPOs, Exchange, Firewalls, and Routing Environments. Instrumental in establishing a remote branch in Arizona. Developed in-house intranet solution and automation tools.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
        Section {
            Text("2003-2004")
                .width(2)
            
            Section {
                Text("Dunwoody College of Technology")
                    .font(.title5)
                    .width(12)
                
                Text("A.A.S. Computer Networking Systems")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
    }
}
