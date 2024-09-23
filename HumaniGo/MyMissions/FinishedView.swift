//
//  FinishedView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 23/09/2024.
//

import SwiftUI

struct FinishedView: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HStack{
                Spacer()
                
                NavigationLink(destination: FavoriteView()) {
                    Text("Favoris") .padding()
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Spacer() // fin b1
                
                NavigationLink(destination: AvenirView()) {
                    Text("À Venir ").padding()
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Spacer() // fin b2
                
                Text("Terminées").padding()
                    .frame(height: 30)
                    .foregroundColor(.white)
                    .background(Color.myblue)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
                Spacer() //fin b3
                
            } // fin grand H
            
            ScrollView{
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .frame(width: 160, height: 200, alignment: .center)
                            .overlay(
                                ZStack {
                                    
                                    Image("image1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 160, height: 200)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                    
                                    Color.white
                                        .opacity(0.6)
                                    
                                    VStack {
                                        VStack{
                                            Text("Malice & Co")
                                                .bold()
                                                .font(.title2)
                                                .foregroundColor(.black)
                                            
                                            Text("Activités pour enfants")
                                                .font(.title3)
                                                .bold()
                                                .padding(.all, 0.2)
                                            
                                        }
                                    }// fin v stack
                                }//fin  zstack
                            ) // fin overlay
                        
                        Spacer()
                        
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .frame(width: 160, height: 200, alignment: .center)
                            .overlay(
                                ZStack {
                                    
                                    Image("image4")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 160, height: 200)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                    
                                    Color.myyellow
                                        .opacity(0.7)
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                    
                                    VStack {
                                        VStack{
                                            Text("Collecte and Go")
                                                .bold()
                                                .font(.title2)
                                                .foregroundColor(.black)
                                            
                                            Text("Collecte de vêtements")
                                                .font(.title3)
                                                .bold()
                                                .padding(.all, 0.2)
                                            
                                        }
                                    }// fin v stack
                                }//fin  zstack
                            ) // fin overlay
                        Spacer()
                        
                    } // fin 2
                }
            }//fin de scrollview
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    FinishedView()
}
