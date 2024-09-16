//
//  Humanigo.swift
//  Humanigo
//
//  Created by Apprenant121 on 11/09/2024.
//

import SwiftUI


extension Color {
    static var Pink : Color = Color(red: 255/255, green: 0, blue: 110/255)
    
    static var Blue : Color = Color(red: 51/255, green: 129/255, blue: 255/255)
    
    static var Yellow : Color = Color(red: 255/255, green: 195/255, blue: 31/255)
}

struct NotificationsView: View {
     
     var body: some View {
          
          VStack {
               ZStack {
                    
                    RoundedRectangle(cornerRadius: 25.0)
                         .fill(Color.yellow)
                         .strokeBorder (Color.mypink, lineWidth : 5)
                         .foregroundColor (.white)
                        .frame(height: 125)
                         
                    
                    //                .offset(x:0, y: 180)
                    
                    
                    
                         .overlay {
                              Spacer()
                              
                              Text("Notifications")
                                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                   .foregroundStyle(.black)
                              
                              //                .offset(x:0, y: 185)
                                   .padding(.top, 5)
                         }
               }
               
          
                         
                         
                         VStack(spacing: 40) {
                              VStack {
                                   
                                   HStack {
                                        
                                        Circle()
                                             .frame(width: 15, height: 15)
                                             .foregroundStyle(Color.mypink)
                                        
                                        Text("""
Tu as reçu des points
Tu as débloqué des récompense
""")
                                        Spacer ()
                                   }
                              }
                              VStack {
                                   
                                   HStack {
                                        
                                        Circle()
                                             .frame(width: 15, height: 15)
                                             .foregroundStyle(Color.mypink)
                                        Text("""
    Tu as une nouvelle mission
    Resto du coeur
    Distribution de repas du ../../..
    """)
                                        Spacer()
                                   }
                              }
                              VStack {
                                   
                                   HStack {
                                        
                                        Circle()
                                             .frame(width: 15, height: 15)
                                             .foregroundStyle(Color.mypink)
                                        
                                        Text("""
Tu as reçu un avis
Resto du Coeur du../../..
“Super coeq....
""")
                                        Spacer()
                                   }
                              }
                              VStack {
                                   
                                   HStack {
                                        
                                        Circle()
                                             .frame(width: 15, height: 15)
                                             .foregroundStyle(Color.mypink)
                                        
                                        Text("""
N’oublie pas de donner ton avis
Resto du Coeur    du ../../..
“Super coeq....
""")
                                        Spacer()
                                   }
                              }
                              VStack {
                                   
                                   HStack {
                                        
                                        Circle()
                                             .frame(width: 15, height: 15)
                                             .foregroundStyle(Color.mypink)
                                        
                                        Text("""
Une nouvelle Association vient de
nous rejoindre....
""")
                                        Spacer()
                                   }
                              }//
                    }
                    .padding()
               Spacer()
               
          }
     }
     
}
               
#Preview {
    NotificationsView()
}

