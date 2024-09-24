//
//  MonProfil.swift
//  Mes avis
//
//  Created by Apprenant151 on 12/09/2024.
//

import SwiftUI
import SwiftData

var pouce = "👍"
var etoile = "⭐️"
var kdo = "🛍️"


struct ProfileView: View {
    
    
    @Environment(\.modelContext) var modelContext
    
    @EnvironmentObject var uidProfil : UIDProfile
    
    @Query var profiles: [Profile]

    @State private var btn: Color = .yellow
    @State var tel = ""
    @State var email = ""
    @State var mdp = ""
    @State var cmdp = ""
    @StateObject var loginVM = utilsPswd()

    func logout(){
        uidProfil.connected = false
        uidProfil.email = ""
        uidProfil.idx = 0
    }
    
    var body: some View {
        
        var profileIdx : Int = profiles.firstIndex(where: { $0.info.email == uidProfil.email }) ?? profiles.count - 1
        
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Mon profil")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(alignment: .leading).padding()
                    
                    Text("Hey \(profiles[profileIdx].info.firstname)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(alignment: .topLeading).padding()
                    
                    HStack{
                        
                        rond(text:"Missions", icon:pouce, nb:Double(profiles[profileIdx].nbmissions), Color.myyellow)
                        Spacer()

                        rond(text:"Avis", icon:etoile, nb:profiles[profileIdx].nbfeedbacks, Color.mypink)
                        Spacer()
                        
                        rond(text:"Points", icon:kdo, nb:Double(profiles[profileIdx].points), Color.myblue)
                        
                        
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
                    
                    displayfeedback(profiles[profileIdx].feedbacks)
                    
                    VStack {
                        
                        Text("Des informations à actualiser ?")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(10)
                        
                        VStack ()
                        {
                            loginVM.champs(name: "Email", def:profiles[profileIdx].info.email , value: $email)
                                .frame(height: 70)
                            loginVM.champs(name: "Téléphone", def:profiles[profileIdx].info.phone , value: $tel)
                                .frame(height: 70)
                            
                            loginVM.champs(name: "Mot de passe", def:"*****",value: $mdp)
                                .frame(height: 70)
                            
                            loginVM.champs(name: "Confirmer le mot de passe", def:"*****",value: $cmdp)
                                .frame(height: 70)
                            
                        }.frame(maxWidth: 300)
                        NavigationLink("Modifier")
                        {
                            Text("modif here")
                        }
                        .foregroundColor(.black).padding(20)
                        .font(.headline)
                        .frame(width: 180, height: 50)
                        .background(Color.myyellow)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                        
                        Button(action: {
                            logout()
                        }, label: {
                            HStack {
                                Text("Se déconnecter")
                                        .padding(5)
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                        .fontWeight(.medium)
                            }
                            .foregroundStyle(.gray)
                            if (!uidProfil.connected) {
                                DelayedNavigationLink(delay: .seconds(1)) {
                                    RootNavView()
                                }
                            }
                        })
                        
                       
                    }
            
                }
                
            }
        }.padding()
    }
}

#Preview {
    ProfileView()
}

