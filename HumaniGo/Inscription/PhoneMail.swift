//
//  ContentView.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 10/09/2024.
//

import SwiftUI

private var Pink : Color = Color(red: 255/255, green: 0, blue: 110/255)
private var Blue : Color = Color(red: 51/255, green: 129/255, blue: 255/255)
private var Yellow : Color = Color(red: 255/255, green: 195/255, blue: 31/255)


struct InscriptionTE: View {
    
    @StateObject var loginVM = utilsPswd()
    @State  var sexe = ""
    @State  var nom = ""
    @State  var prenom = ""
    @State  var tel = ""
    @State  var email = ""
    @State  var mdp = ""
    @State  var cmdp = ""
    
    @State private var Error = ""
    func Sexe()-> some View
    {
        VStack (alignment: .leading)
        {
            HStack
            {
                Text("Sexe :").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .leading)//.padding(40)
                
                Menu(sexe.isEmpty ? "Sélectionnez" : sexe)
                {
                    Button("Autre", action: { sexe = "Autre"})
                    Button("Femme", action: { sexe = "Femme" })
                    Button("Homme", action: { sexe = "Homme" })
                }.foregroundColor(Pink)
                
            }
            
        }
    }
    
    
    @State var btn : Bool = false
    func inscription() -> some View
    {
        ZStack
        {
            Button(
                action: {
                    btn = true
                    if(!ErrorMail(_email:email))
                    {
                        Error = "Email pas valide"
                    }
                    
                    else if
                        tel.isEmpty || email.isEmpty
                    {
                        
                        Error = "Tous les champs doivent être remplis"
                    }
                    else
                    {
                        
                        Error = ""
                    }
                    
                    
                },
                label :
                    {})
            .frame(width: 150, height: 50)
            .background(Yellow)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            NavigationLink("Suivant")
            {
                Mdp()
            }.foregroundColor(.black).font(.headline)
            if (btn)
            {
                if (Error.isEmpty)
                {
                    Text("Compte créé").foregroundStyle(.green)
                    
                    //ICI ENREGISTRER LES CHAMPS POUR LA CREATION DU COMPTE
                }
                else
                {
                    Text("\(Error)").foregroundStyle(.red)
                    
                }
            }
        }
    }
    
    
    
    var body: some View {
        NavigationStack {
            VStack
            {
                Spacer()
                Text("Inscris-toi").font(.title).bold()
                    .padding(6)
                
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top))
                {
                    //-----------------BORD ROSE------------------------
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).strokeBorder(Pink,lineWidth: 5).frame(width: 410,height: 100)
                        .padding(-7)
                    Rectangle().foregroundColor(.white)
                        .frame(width: 400,height: 90).padding()
                    //-----------------BORD ROSE------------------------
                    
                    
                    
                    
                    VStack (alignment: .leading)
                    {
                        //Spacer()
                        
                        loginVM.champs(name: "Téléphone *", def:"0612345678", value:$tel).font(.title3)
                            .frame(height: 150)
                        loginVM.champs(name: "Email *", def: "jhondoe@gmail.com",value: $email).font(.title3)
                        //Spacer()
                        
                        
                    }.frame(maxWidth: 300) // Aligne tout à gauche
                    
                }.offset(CGSize(width: 1.0, height: 10.0))
                inscription().padding(100)
                
                
                //---------------inscription avec ----------------------
                ZStack
                {
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color(.systemGray)).frame(maxWidth: 300)
                    Text("Inscription avec")
                        .frame(width: 150, height: 10)
                        .background(.white)
                    
                }.padding(5)
                HStack
                {
                    ApiConnect(name:"Apple", logo:"apple.logo")
                    
                    ApiConnect(name:"Google", logo:"google")
                }
                
            }
            HStack
            {
                Text("Tu as déjà un compte ? ")
                NavigationLink("Connecte-toi")
                {
                    ConnexionView()
                }
                
            }.padding()
            
        }
    }
}

#Preview {
    InscriptionTE()
}


