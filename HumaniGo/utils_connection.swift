//
//  Inscr:connec func.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 12/09/2024.
//

import SwiftUI
import SwiftData

class utilsPswd: ObservableObject {
    
    @Published var seeMdp = false
    @Published var iconMdp = "eye"
    
    
    func champs(name: String, def: String,value: Binding<String>) -> some View {
        //        @ObservedObject var p: Mdp
        
        VStack(alignment: .leading)
        {
            Text(name)
        
            if (name == "Téléphone")
            {
                TextField(def, text: value).keyboardType(.numberPad)
            }
            else if ( (name == "Mot de passe" || name == "Confirmer le mot de passe"))
            {
                HStack
                {
                    if (!seeMdp)
                    {
                        SecureField("**********", text:value)
                    }
                    else
                    {
                        TextField(def, text: value)
                    }
                    Button(
                        action:{
                            self.seeMdp.toggle()
                            self.iconMdp = self.seeMdp ? "eye.slash" : "eye"
                            
                        },
                        label:
                            {
                                Image(systemName:self.seeMdp ? "eye.slash" : "eye").foregroundColor(.black).opacity(0.7)
                            })
                }
            }
            else
            {
                
                TextField(def, text: value)
                
            }
            Rectangle()
                .frame(height: 2)
                .foregroundColor(Color(.systemGray))
            
        }
        .frame(height: 60)
    }
}

func ApiConnect(name:String, logo:String) -> some View {
    Button(
        action:{},
        label:
            {
                ZStack (alignment: .center)
                {
                    
                    Rectangle()
                        .stroke(Color(.systemGray4), lineWidth: 2).frame(width: 140, height: 40)
                    HStack
                    {
                        if (name == "Google")
                        {
                            Image(logo).resizable()
                                .frame(width: 30, height: 30)
                        }
                        else
                        {
                            Image(systemName:logo).foregroundColor(.black)
                        }
                        Text(name)
                            .foregroundColor(.black)
                            .font(.headline)
                            .frame(width: 100, height: 40)
                    }
                    
                }
                
            }
    ).padding()
}

func ErrorMail(_email: String) -> Bool {
    let emailRegEx = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
    
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: _email)
}

//#Preview {
//    Mdp(sexe: , firstname: <#T##Binding<String>#>, lastname: <#T##Binding<String>#>, phone: <#T##Binding<String>#>, email: <#T##Binding<String>#>)
//}

