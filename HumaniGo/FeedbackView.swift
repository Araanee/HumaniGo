//
//  MesAvis.swift
//  Mes avis
//
//  Created by Apprenant151 on 11/09/2024.
//

import SwiftUI

struct FeedbackView: View {
    
    @State private var btn: Color = Color.myyellow
    
    // Variables pour les couleurs des 5 coeurs
    @State private var couleur1: Color = .gray
    @State private var couleur2: Color = .gray
    @State private var couleur3: Color = .gray
    @State private var couleur4: Color = .gray
    @State private var couleur5: Color = .gray
    
    
    @State private var feedback: String = ""
    // Variable pour stocker le texte du TextField
    
    @State private var rating = 0
    
    var body: some View {
        VStack{
            VStack(alignment:.leading) {
                
                Text("Partage ton avis")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .frame(alignment: .topLeading)
                   
                
                HStack(spacing: 10) {
                    HStack(spacing: 10) {
                        ForEach(1..<6, id: \.self) { index in
                            Button(action: {
                                rating = index
                            }) {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(index <= rating ? Color.mypink : couleur1) // Change la couleur en fonction de l'index et du rating
                                    .font(.title)
                                    .padding(7)
                            }
                        }
                    }
                }
                //
                
                ZStack  {
                    
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.white)
                        .frame(width: 350, height:450)
                        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color.myyellow, radius: 0.4, x: 4, y: 5)
                        .padding(1)
                    TextField("Partage ton expérience",text: $feedback)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350, height: 400)
                        .font(.title)
                        .foregroundStyle(.gray)
                }
                
                // Limiter le nombre de caractères à 400
                if feedback.count > 400 {
                    Text("Le texte ne peut pas dépasser 400 caractères.")
                        .foregroundColor(.red)
                        .padding(.top, 5)
                }
                // Afficher la longueur actuelle du texte en cours de frappe
                Text("\(feedback.count) / 400 caractères")
                    .padding()
                    .foregroundColor(.gray)
                    .frame(maxWidth: 370, alignment: .trailing)
                
                
                // Afficher le bouton "je partage"
            }
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(Color.myyellow)
                    .frame(width: 150, height: 50, alignment: .center)
                
                Button(action: {
                    btn = Color.mypink
                    
                }, label: {
                    Text("Publier")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(2)
                        .foregroundColor(.black)
                })
            }
        }
    }
}


#Preview {
    FeedbackView()
}

