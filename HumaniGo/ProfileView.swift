//
//  MonProfil.swift
//  Mes avis
//
//  Created by Apprenant151 on 12/09/2024.
//

import SwiftUI

var prenom: String = "Emma"
// comment on fait pour que ça prenne le texte tapé par l'utilisateur ?
var pouce = "👍"
var etoile = "⭐️"
var kdo = "🛍️"

var avis1 = Feedback(association:"Les Restos du Coeur", hearts: 5, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )
var avis2 = Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." )
var avis3 = Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )


func rond(text:String, icon:String, nb:Double, _ color: Color) -> some View
{
    VStack
    {
        ZStack {
            Circle()
                .frame(width: 80)
                .foregroundColor(color)
            
            if (text == "Avis")
            {
                Text(String(nb) + "/5")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                // Comment on fait pour relier à un compteur de missions validées
            }
            else
            {
                Text(String(Int(nb)))
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
        Text(icon)
            .font(.system(size: 28))
            .fontWeight(.semibold)
            .padding(10)
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
    }
}

func allfeedback(_ feedback: Feedback) -> some View
{
    
    VStack (alignment: .center)
    {
        HStack (spacing: 0)
        {
            affCoeurs(count: feedback.hearts)
            Spacer()
            Text(feedback.association)
        }.frame(width: 300)

        Rectangle().frame(width: 300, height: 1)
            .foregroundStyle(.pink)//.frame(height: 0)
        
        Text(feedback.comment).padding(.bottom, 40).frame(width: 300)
    }.frame(width: 330)
}
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
                    
                    Text("Hey \(prenom)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(alignment: .topLeading).padding()
                    
                    HStack{
                        
                        rond(text:"Missions", icon:pouce, nb:8, Color.myyellow)
                        Spacer()
                        
                        rond(text:"Avis", icon:etoile, nb:4.5, Color.mypink)
                        Spacer()
                        
                        rond(text:"Points", icon:kdo, nb:680, Color.myblue)
                        
                        
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
                        //Text(etoile)
                          //  .font(.system(size: 32))
                        //Text("Tes évaluations")
                          //  .font(.system(size: 20)).foregroundStyle(Color.gray)
                        
                        Rectangle().frame(height: 1).foregroundColor(Color(.systemGray4))
                    }
                    ScrollView  {
                        allfeedback(avis1).padding(.top)
                            allfeedback(avis2)
                            allfeedback(avis3)
                            allfeedback(avis1)
                    }.frame(height: 200)
                    
                    VStack {
                       
                        Text("Des informations à actualiser ?")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(10)
                        
                        VStack (alignment: .leading)
                        {
                            //Spacer()
                            
                            loginVM.champs(name: "Email", def:"emma.benevole@gmail.com",value: $email)
                            loginVM.champs(name: "Tel", def:"Jhon",value: $tel)
                            
                        loginVM.champs(name: "Mot de passe", def:"Jhon",value: $mdp)
                            loginVM.champs(name: "Confirmez le mot de passe", def:"Jhon",value: $cmdp)
                            //Spacer()
                            
                            
                        }.frame(maxWidth: 300)
                    }
                    
                }
                
            }
        }.padding()
    }
}

#Preview {
    ProfileView()
}
