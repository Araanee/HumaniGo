//
//  MonProfil.swift
//  Mes avis
//
//  Created by Apprenant151 on 12/09/2024.
//

import SwiftUI

var prenom: String = ""

var pouce = "👍"
var etoile = "⭐️"
var kdo = "🛍️"

var avis1 = Feedback(association:"Les Restos du Coeur", hearts: 2, comment:"Khadija s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )

var avis2 = Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." )
var avis3 = Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )


var listFeedback = [avis1, avis2, avis3]

var infoEmma = InfoProfil(gender: Gender.female, firstname: "Celine", lastname: "TOTO", email: "emma@gmail.com", phone: "0000000000", pswd: "azerty123")

var profil1 = Profil(id:0, nbmissions: 10, nbfeedbacks: 3.5, points: 530, feedbacks: listFeedback,info: infoEmma )
// Comment on fait pour que le nom rentré par l'asso apparaisse dans le code

struct ProfileView: View {
    
    @State private var btn: Color = .yellow
    @State  var tel = ""
    @State  var email = ""
    @State  var mdp = ""
    @State  var cmdp = ""
    @StateObject var loginVM = utilsPswd()
    
    
    var body: some View {
        
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Mon profil")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(alignment: .topLeading).padding()
                    
                    Text("Hey \(profil1.info.firstname)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(alignment: .topLeading).padding()
                    
                    HStack{
                        
                        rond(text:"Missions", icon:pouce, nb:Double(profil1.nbmissions), Color.myyellow)
                        Spacer()
                        
                        rond(text:"Avis", icon:etoile, nb:profil1.nbfeedbacks, Color.mypink)
                        Spacer()
                        
                        rond(text:"Points", icon:kdo, nb:Double(profil1.points), Color.myblue)
                        
                        
                    }.padding(20)
                    
                    
                    HStack(alignment: .center) {
                        Spacer()
                        NavigationLink("Récompenses 🛍️")
                        {
                            Text("boutique here")
                        }
                        .foregroundColor(.black).padding(20)
                        .font(.headline)
                        .frame(width: 180, height: 50)
                        .background(Color.myyellow)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                        
                    }.padding(.bottom, 30)
                    HStack {
                        Rectangle().frame(height: 1).foregroundColor(Color(.systemGray4))
                    }
                    
                    //displayfeedback(profil1.feedbacks)
                    
                    VStack {
                        
                        Text("Des informations à actualiser ?")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(10)
                        
                        VStack (alignment: .leading)
                        {
                            loginVM.champs(name: "Email", def:"emma.benevole@gmail.com",value: $email)
                                .frame(height: 70)
                            loginVM.champs(name: "Tel", def:"Jhon",value: $tel)
                                .frame(height: 70)
                            
                            loginVM.champs(name: "Mot de passe", def:"Jhon",value: $mdp)
                                .frame(height: 70)
                            
                            loginVM.champs(name: "Confirmer le mot de passe", def:"Jhon",value: $cmdp)
                                .frame(height: 70)
                            
                        }.frame(maxWidth: 300)
                        NavigationLink("Modifiez")
                        {
                            Text("modif here")
                        }
                        .foregroundColor(.black).padding(20)
                        .font(.headline)
                        .frame(width: 180, height: 50)
                        .background(Color.myyellow)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                    }
                    
                }
                
            }
        }.padding()
    }
}

#Preview {
    ProfileView()
}
