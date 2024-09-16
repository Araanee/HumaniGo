//
//  Connexion.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 12/09/2024.
//

import SwiftUI

struct ConnexionView: View {
    
    @StateObject var loginVM = utilsPswd()
    @State  var email = ""
    @State  var mdp = ""
    @State var Error = ""
    
    
    @State var btn : Bool = false
    func connexion() -> some View
    {
        VStack
        {
            Button(
                action: {
                        //VERIFIER MDP ET MAIL BDD
                    if(!ErrorMail(_email:email))
                    {
                        Error = "Email pas valide"
                    } //en attendant
                    else {
                        Error = ""
                    }
                },
                label :
                    {
                        NavigationLink("Connecte-toi")
                        {
                            //VERIFIER DANS LA BASE DE DONNEE
                            HelloWorldView()
                        }
                            .foregroundColor(.black)
                            .font(.headline)
                            .frame(width: 150, height: 50)
                            .background(Color.myyellow)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            })
        }
    }
    
    var body: some View {
            NavigationStack {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top))
                {
                    
                    Image("accueil").resizable().ignoresSafeArea().frame(width: 400, height:200)
                    //-----------------BORD ROSE------------------------
                    
                    RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color.pink,lineWidth: 5).foregroundColor(.white)
                        .frame(width: 410,height: 380).offset(x:0, y: 180)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.white)
                        .frame(width: 410,height: 390).offset(x:0, y: 185)
                    
                    //-----------------BORD ROSE------------------------
                    VStack
                    {   Spacer()
                        Text("Connecte-toi").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        
                        
                        loginVM.champs(name: "Email", def: "johndoe@gmail.com", value: $email).padding()
                        
                        loginVM.champs(name: "Mot de passe", def: "*********", value: $mdp).padding()
                        
                    }.frame(maxWidth: 300)//.padding(10)
                    
                }
                VStack
                {
                    connexion().padding(6)
                    Text(Error).foregroundStyle(.red)
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
