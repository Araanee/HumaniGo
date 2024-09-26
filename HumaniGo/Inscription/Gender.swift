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


struct InscrSexe: View {
   
    @StateObject var loginVM = utilsPswd()
    @State var sexe: Gender = Gender.nul
    @Binding var toto: Bool
        
        func Sexe()-> some View
        {
            VStack (alignment: .leading)
            {
                HStack
                {
                    Text("Sexe :").font(.title2)
                        .frame(height: 150).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .leading)
                 
                    Menu(sexe.value.isEmpty ?  "Sélectionnez" : sexe.value )
                    {
                        Button("Autre", action: { sexe = Gender.other}).font(.title3)
                        Button("Femme", action: { sexe = Gender.female }).font(.title3)
                        Button("Homme", action: { sexe = Gender.male }).font(.title3)
                    }.foregroundColor(Pink).font(.title2)
                }
            }
        }
        
        
        @State var btn : Bool = false
        func inscription() -> some View
        {
            VStack
            {
                Button(
                    action: {
                        btn.toggle()
                    },
                    label :
                        {
                            ZStack (alignment: .center)
                            {
                                Text("Suivant")
                                    .foregroundColor(.black)
                                    .font(.headline)
                                    .frame(width: 150, height: 50)
                                    .background(Yellow)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                
                                    
                            }
                        })
                
                Text("Étape 1/4")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding()
                
                if (!sexe.value.isEmpty && btn)
                {
                    DelayedNavigationLink(delay: .seconds(0)) {
                
                        InscriptionNP(sexe: $sexe)
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
                            
                            Sexe().font(.title3)
                                .frame(height: 160)
                        }
                    }
                    
                    inscription()
                        .frame(height: 200)
                    
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
                    Button("Connecte-toi")
                    {
                        toto.toggle()
//                        ConnexionView()
                    }
                }.padding()
            }
            //.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    InscrSexe(toto: .constant(false))
}


