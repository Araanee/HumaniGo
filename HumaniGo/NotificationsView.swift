//
//  Humanigo.swift
//  Humanigo
//
//  Created by Apprenant121 on 11/09/2024.
//

import SwiftUI
import SwiftData


extension Color {
    static var Pink : Color = Color(red: 255/255, green: 0, blue: 110/255)
    
    static var Blue : Color = Color(red: 51/255, green: 129/255, blue: 255/255)
    
    static var Yellow : Color = Color(red: 255/255, green: 195/255, blue: 31/255)
}

struct NotificationsView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Query  var shared: [Profile]
    
    var body: some View {
        
        
        NavigationStack {
            ScrollView
            {
                
                VStack {
                    Text("Notifications").font(.title).bold().padding(6)
                        .padding()
                    ZStack (alignment: Alignment(horizontal: .center, vertical: .top))
                    {
                        
                        RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color.Pink,lineWidth: 5).frame(width: 410,height: 100)
                            .padding(-7)
                        Rectangle().foregroundColor(.white)
                            .frame(width: 400,height: 90).padding()
                        
                        
                        VStack(alignment: .leading, spacing: 40)
                        {
                            
                            displayNotif(shared.first!)

                            Button(action: {
                                shared.first!.notification.append("Tu as reçu des points\rTu as débloqué des récompenses")
                                
                                print(shared.first!.notification)
                            }, label: {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            })
                            
                            
                            
                        }.padding()
                        
                    }
                    Spacer()
                    
                }
            }
        }
    }
    
    func displayNotif(_ profil: Profile) -> some View {
        ForEach (profil.notification, id:\.self) { notif in
            VStack
            {
                
                HStack {
                    Circle()
                        .frame(width: 80, height: 15)
                        .foregroundStyle(.red)
                    
                    Text(notif)
                    Spacer ()
                }
                
                Rectangle().frame(width: 350, height: 1).foregroundColor(.blue)
            }
            
            
        }
    }
    
}
    #Preview {
       NotificationsView()// .environmentObject(ShareProfilData(profil: Profil(nbmissions: 10, nbfeedbacks: 3.5, points: 530, feedbacks: [Feedback(association:"Les Restos du Coeur", hearts: 2, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" ),
//                                                                                                                                        Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." ),Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )],info: InfoProfil(gender: Gender.female, firstname: "Emma", lastname: "TOTO", email: "emma@gmail.com", phone: "0600000001", pswd: "azerty123")
//                                                                            )))
    }


