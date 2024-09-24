//
//  ContentView.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 10/09/2024.
//

import SwiftUI

struct Mdp: View {
    
    @EnvironmentObject var navControl: NavigationControl
    @EnvironmentObject var uidProfil : UIDProfile
    @Environment(\.modelContext) var modelContext
    
    @StateObject var loginVM = utilsPswd()
    
    @Binding var sexe: Gender
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var phone: String
    @Binding var email: String
    
    @State  var mdp = ""
    @State  var cmdp = ""
    
    @State private var Error = "Tous les champs doivent être remplis"
    
    @State var btn : Bool = false
    func inscription() -> some View
    {
        VStack
        {
            
            Button(
                action: {
                    btn = true
                    if mdp.isEmpty || cmdp.isEmpty
                    {
                        
                        Error = "Tous les champs doivent être remplis"
                    }
                    else if (mdp != cmdp)
                    {
                        
                        Error = "Le mot de passe n'est pas identique"
                    }
                    else
                    {
                        
                        Error = ""
                        //print(uidProfil.connected)
                        uidProfil.connected = true
                        modelContext.insert(ajouterProfil(gender: sexe, firstname: firstname, lastname: lastname, email: email, phone: phone, pswd: mdp))
                    }
                    
                    
                }, label:{Text("Inscris-toi !").foregroundColor(.black).font(.headline)})
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
                        DelayedNavigationLink(delay: .seconds(2)) {
                            
                            ConfirmationEngagement()
                        }
                        
                    }
                }
                else
                {
                    Text("\(Error)").foregroundStyle(.red).frame(width: 300)
                    
                }
            }
            
            Text("Étape 4/4")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding()
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
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).strokeBorder(Color.mypink,lineWidth: 5).frame(width: 410,height: 100)
                        .padding(-7)
                    Rectangle().foregroundColor(.white)
                        .frame(width: 400,height: 90).padding()
                    //-----------------BORD ROSE------------------------
                    
                    
                    
                    
                    VStack (alignment: .leading)
                    {
                        //Spacer()
                        loginVM.champs(name: "Mot de passe", def:"**********",value:$mdp).font(.title3).frame(height: 150)
                        loginVM.champs(name: "Confirmer le mot de passe", def:"**********", value: $cmdp).font(.title3)
                        
                        
                        
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



func ajouterProfil(gender: Gender, firstname: String, lastname: String, email: String, phone: String, pswd: String) -> Profile {
    return Profile(nbmissions: 0, nbfeedbacks: 0, points: 0, feedbacks: [],
                   notification: [NotificationProfile(message: "Bravo ! Tu as finalisé\(gender == Gender.female ? "e":"") ton inscription.\rTu peux désormais participer aux missions disponibles.", type: TypeNotif.DefaultNotif)]
                   ,info: InfoProfile(gender: gender, firstname: firstname, lastname: lastname, email: email, phone: phone, pswd: pswd))
    
}

//#Preview {
//   Mdp().environmentObject(NavigationControl())
//}

