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
    @EnvironmentObject var uidProfile : UIDProfile
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
                            
                            displayNotif(shared[uidProfile.idx])
                            
                            //                                                        Button(action: {
                            //                                                            shared.first!.notification.append("Laisse un avis")
                            //
                            //                                                            print(shared.first!.notification)
                            //                                                        }, label: {
                            //                                                            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            //                                                        })
                            //
                        }.padding()
                        
                    }
                    Spacer()
                    
                }
            }
        }
    }
    
    func displayNotif(_ profil: Profile) -> some View {
        ForEach (profil.notification) { notif in
            VStack
            {
                HStack {
                    Circle()
                        .frame(width: 80, height: 15)
                        .foregroundStyle(Color.mypink)
                    
                    if(notif.type == TypeNotif.AvisNotif)
                    {
                        NavigationLink(notif.message) {
                            
                            FeedbackView()
                        }.foregroundStyle(.black)
                    }
                    else
                    {
                        Text(notif.message).foregroundStyle(.black)

                    }
                    
                }
                
                Spacer ()
            }
            
            Rectangle().frame(width: 350, height: 1).foregroundColor(.gray)
        }
        
        
    }

}

#Preview {
    NotificationsView()// .environmentObject(ShareProfilData(profil: Profil(nbmissions: 10, nbfeedbacks: 3.5, points: 530, feedbacks: [Feedback(association:"Les Restos du Coeur", hearts: 2, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" ),
    //                                                                                                                                        Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." ),Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )],info: InfoProfil(gender: Gender.female, firstname: "Emma", lastname: "TOTO", email: "emma@gmail.com", phone: "0600000001", pswd: "azerty123")
    //                                                                            )))
}


