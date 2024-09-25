//
//  Humanigo.swift
//  Humanigo
//
//  Created by Apprenant121 on 11/09/2024.
//

import SwiftUI
import SwiftData


struct NotificationsView: View {
    
    @Environment(\.modelContext) var modelContext
    @EnvironmentObject var uidProfile : UIDProfile
    @Query  var shared: [Profile]
    @State var profil : Profile = Profile(nbmissions: 10, nbfeedbacks: 4.5, points: 530, feedbacks: [],notification: [],info: InfoProfile(gender: Gender.female, firstname: "Emma", lastname: "TOTO", email: "emma@gmail.com", phone: "0600000001", pswd: "azerty123"))
    
    
    var body: some View {
       
        
        NavigationStack {
            
                
                VStack {
                    Text("Notifications")
                        .font(.title).bold()
                        .padding(.trailing, 130)
                    
                    ZStack (alignment: Alignment(horizontal: .center, vertical: .top))
                    {
                        
                        RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color.mypink, lineWidth: 5).frame(width: 410,height: 100)
                            .padding(-7)
                        
                        Rectangle().foregroundColor(.white)
                            .frame(width: 400,height: 90).padding()

                        ScrollView
                        {
                        VStack(alignment: .leading, spacing: 40)
                        {
                            
                            displayNotif()

                        }.padding(.top, 20)

                        
                    }
                    Spacer()
                    
                }
            }
            .onAppear {
                profil = shared[uidProfile.idx]
            }
        }.navigationBarBackButtonHidden()
    }
    
    func displayNotif() -> some View {
        ForEach ($profil.notification) { $notif in
            VStack
            {
                HStack {
                    Circle()
                        .frame(width: 80, height: 15)
                        .foregroundStyle(Color.mypink)
                    
                    if(notif.type == TypeNotif.AvisNotif)
                    {
                        NavigationLink(destination: FeedbackView(notif: $notif, profile: $profil)) {
                            HStack {
                                Text(notif.message)
                                    .foregroundStyle(.black)
                                // Ce Spacer pousse le texte vers la gauche
                            }
                        }
                    }
                    
                    else
                    {
                        Text(notif.message)
                            .foregroundStyle(.black)
                            
                            
                    }
                    Spacer()
                }.padding(.top, 20).padding(.bottom)
                
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


