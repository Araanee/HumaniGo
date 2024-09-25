//
//  MesAvis.swift
//  Mes avis
//
//  Created by Apprenant151 on 11/09/2024.
//

import SwiftUI

struct FeedbackView: View
{
    @Binding var notif: NotificationProfile
    @Binding var profile: Profile
    
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
        NavigationStack {
            VStack{
                VStack (alignment: .leading){
                    
                    Text("Partage ton expérience")
                        .font(.title).bold().padding(.bottom, 10)
                        .frame(alignment: .leading)
                    
                    
                    
                    HStack(spacing: 10) {
                        ForEach(1..<6, id: \.self) { index in
                            Button(action: {
                                rating = index
                            }) {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(index <= rating ? Color.mypink : couleur1) // Change la couleur en fonction de l'index et du rating
                                    .font(.title)
                                
                            }
                        }.padding(.bottom, 7)
                        
                    }
                    
                    ZStack(alignment: .top) {
                        
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(Color(.systemGray6)).opacity(0.5)
                        
                            .shadow(color: Color.myblue, radius: 0.4, x: 4, y: 5)
                            
                           
                        TextField("Partage ton expérience",text: $feedback, axis : .vertical)
                        
                            .padding(.top,20).padding(.leading,20).font(.title3)
                        
                            .cornerRadius(17)
        
                    }
                    .frame(width: 350, height:350)
                    
                    // Limiter le nombre de caractères à 400
                    if feedback.count > 400 {
                        Text("Le texte ne peut pas dépasser 400 caractères.")
                            .foregroundColor(.red)
                       
                    }
                    // Afficher la longueur actuelle du texte en cours de frappe
                    Text("\(feedback.count) / 400 caractères")

                        .padding(10)
                        .foregroundColor(.gray)
                    
                    
                    
                    // Afficher le bouton "je partage"
                }
                
                NavigationLink("Partager")
                {
                    SharedFeedback()
                }.foregroundColor(.black)
                    .font(.headline)
                    .frame(width: 150, height: 50)
                    .background(Color.myyellow)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
//                )
            }
        }
    }
}



//#Preview {
//    FeedbackView()
//}

