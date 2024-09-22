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

struct InscriptionNP: View {
    
    @Binding var sexe: Gender
    
    @StateObject var loginVM = utilsPswd()
    @State  var lastname = ""
    @State  var firstname = ""
    
    @State private var Error = "Tous les champs doivent être remplis"
    
    
    @State var btn : Bool = false
    func inscription() -> some View
    {
        VStack
        {
            
            Button(
                action: {
                    print(lastname + firstname + " error: " + Error)
                    btn = true
                    if lastname.isEmpty || firstname.isEmpty
                    {
                        
                        Error = "Tous les champs doivent être remplis"
                        
                    }
                    else
                    {
                        Error = ""
                    }
                },label: { ZStack (alignment: .center)
                    {
                        Text("Suivant")
                            .foregroundColor(.black)
                            .font(.headline)
                            .frame(width: 150, height: 50)
                            .background(Yellow)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        
                        
                    }
                }).padding()
            if (Error.isEmpty && btn)
            {
                DelayedNavigationLink(delay: .seconds(0)) {
                
                    InscriptionTE(sexe:$sexe, firstname:$firstname,lastname:$lastname)
                }
            }
            else if (btn)
            {
                Text("\(Error)").foregroundStyle(.red).frame(width: 300)
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
                    RoundedRectangle(cornerRadius: 25.0).strokeBorder(Pink,lineWidth: 5).frame(width: 410,height: 100)
                        .padding(-7)
                    Rectangle().foregroundColor(.white)
                        .frame(width: 400,height: 90).padding()
                    //-----------------BORD ROSE------------------------
                    
                    
                    
                    
                    VStack (alignment: .leading)
                    {
                        //Spacer()
                        
                        loginVM.champs(name: "Nom *", def:"Doe",value: $lastname).font(.title3)
                            .frame(height: 150)
                        loginVM.champs(name: "Prénom *", def:"Jhon",value: $firstname).font(.title3)
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
                    //                        ConnexionView(, bool: <#Binding<Bool>#>)
                }
                
            }.padding()
        }
    }
}

//#Preview {
//    InscriptionNP(sexe: Gender.other)
//}


