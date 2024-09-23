//
//  Connexion.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 12/09/2024.
//

import SwiftUI
import SwiftData

struct ConnexionView: View {
    
    
    @Query  var shared: [Profile]
    @StateObject var loginVM = utilsPswd()
    
    @EnvironmentObject var navControl : NavigationControl
    @EnvironmentObject var uidProfil: UIDProfile
    
    @State  var email = ""
    @State  var pswd = ""
    @State var Error = "Merci de remplir les champs"
    
    @State var btn : Bool = false
    
    func checkin(_ email: String, _ pswd : String) -> Bool
    {
        return shared.contains { profile in
            profile.info.email == email && profile.info.pswd == pswd
        }
    }
    func connexion() -> some View
    {
        VStack
        {
            Button(
                action: {
                    btn = true
                        //VERIFIER MDP ET MAIL BDD
                    if(!checkin(email, pswd))
                    {
                        Error = "Email ou mot de passe incorrecte"
                    } //en attendant
                    else 
                    {
                        Error = ""
                        uidProfil.connected = true
                    }
                },
                label :
                    {Text("Connecte-toi").foregroundColor(.black).font(.headline)})
            .frame(width: 150, height: 50)
            .background(Color.myyellow)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            if (btn)
            {
                if (Error.isEmpty)
                {
                    Text("Compte connecté").foregroundStyle(.green)
                    
                    if (uidProfil.engaged)
                    {
                        DelayedNavigationLink(delay: .seconds(1)) {
                            
                            ConfirmationEngagement()
                        }
                        
                        
                    }
                    else
                    {
                        
                        DelayedNavigationLink(delay: .seconds(1)) {
                            
                            ProfileView()
                        }.onAppear{navControl.tabViewSelection = 4}
                    }
                    //ICI ENREGISTRER LES CHAMPS POUR LA CREATION DU COMPTE
                }
                else
                {
                    Text("\(Error)").foregroundStyle(.red).frame(width: 300)
                    
                }
            }
            
        }
    }
    
    var body: some View {
            NavigationStack {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top))
                {
                    
                    Image("accueil").resizable().ignoresSafeArea().frame(width: 400, height:200)
                    //-----------------BORD ROSE------------------------
                    
                    RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color.pink,lineWidth: 5).foregroundColor(.white)
                        .frame(width: 410,height: 380).offset(x:0, y: 170)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.white)
                        .frame(width: 410,height: 390).offset(x:0, y: 175)
                    
                    //-----------------BORD ROSE------------------------
                    VStack
                    {   Spacer()
                        Text("Connecte-toi").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        
                        
                        loginVM.champs(name: "Email", def: "johndoe@gmail.com", value: $email).padding()
                        
                        loginVM.champs(name: "Mot de passe", def: "*********", value: $pswd).padding()
                        
                    }.frame(maxWidth: 300)//.padding(10)
                    
                }
                VStack
                {
                    connexion().padding(6)
//                    Text(Error).foregroundStyle(.red)
                }
                
                //---------------inscription avec ----------------------
                ZStack
                {
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color(.systemGray)).frame(maxWidth: 300)
                    Text("Connexion avec")
                        .frame(width: 150, height: 10)
                        .background(.white)
                    
                }
                .padding(15)
                
                HStack
                {
                    ApiConnect(name:"Apple", logo:"apple.logo")
                    
                    ApiConnect(name:"Google", logo:"google")
                }
                
                HStack
                {
                    Text("Pas encore de compte ? ")
                    NavigationLink("Inscris-toi")
                    {
                        InscrSexe()
                    }
                    
                    
                }.padding()
            }
        
    }
}

#Preview {
    ConnexionView()
}
