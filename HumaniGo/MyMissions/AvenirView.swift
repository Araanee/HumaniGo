//
//  AvenirView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 23/09/2024.
//

import SwiftUI

struct AvenirView: View {
    var body: some View {
        VStack(spacing: 10) {
            
            ScrollView{
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .frame(width: 160, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(
                                ZStack{
                                    Image("image2")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 160, height: 220)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                    
                                    Color.mypink
                                        .opacity(0.6)
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                        Spacer()
                                        
                                        VStack {
                                            
                                            Text("Distib' sociale")
                                                .font(.title2)
                                                .bold()
                                                .foregroundColor(.white)
                                            
                                            Text("Maraude")
                                                .bold()
                                                .font(.title3)
                                                .foregroundStyle(.white)
                                                .padding(.all, 0.2)
                                        }
                                } // fin z stack
                            ) // fin overlay
                        
                        Spacer()
                        
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .frame(width: 160, height: 200, alignment: .center)
                            .overlay(
                                ZStack {
                                    
                                    Image("image6")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 160, height: 200)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                    
                                    Color.white
                                        .opacity(0.6)
                                    VStack{
                                        Text("Arganza")
                                            .bold()
                                            .font(.title2)
                                            .foregroundColor(.black)
                                        
                                        Text("Aide aux seniors")
                                            .font(.title3)
                                            //.bold()
                                            .padding(.all, 0.2)
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
    AvenirView()
}
