//
//  Mission.swift
//  mesmissions
//
//  Created by Apprenant128 on 12/09/2024.
//

import SwiftUI

struct FavoriteView: View {
  
    var body: some View
    {
        VStack(spacing: 10){
            
            NavigationStack {
                
                HStack{
                    Spacer()
                    
                    Text("Favoris") .padding()
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .background(Color.myblue)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Spacer() // fin b1
                    
                    NavigationLink(destination: AvenirView()) {
                        Text("À Venir ").padding()
                            .frame(height: 30)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                    
                    Spacer() // fin b2
                    
                    NavigationLink(destination: FinishedView()) {
                        Text("Terminées").padding()
                            .frame(height: 30)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                    
                    Spacer() //fin b3
                    
                } // fin grand H
                
                Spacer()
                
                ScrollView{
                    VStack {
                        Spacer()
                        HStack{
                            Spacer()
                            
                            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                .frame(width: 160, height: 200, alignment: .center)
                                .overlay(
                                    ZStack {
                                        
                                        Image("image2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 160, height: 200)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                        
                                        Color.white
                                            .opacity(0.6)
                                        
                                        VStack{
                                            HStack {
                                                Spacer()
                                                VStack{
                                                    Text("Épicerie sociale ")
                                                        .bold()
                                                        .font(.title2)
                                                        .foregroundColor(.black)
                                                    
                                                    Text("Aide à la personne ")
                                                        . font(.title3)
                                                        //.bold()
                                                        .padding(.all, 0.2)
                                                    
                                                }
                                                
                                                Button {
                                                    
                                                } label: {
                                                    Image(systemName: "heart.fill").foregroundColor(Color.mypink)
                                                        .font(.title)
                                                        .padding (.bottom, 100)
                                                    
                                                }
                                                .offset(x: -10, y: -20.0)
                                            }
                                        }// fin v stack
                                    }//fin  zstack
                                ) // fin overlay
                            
                            Spacer()
                            
                            
                            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                .frame(width: 160, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    ZStack{
                                        Image("image1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 160, height: 220)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                        
                                        Color.myyellow
                                            .opacity(0.7)
                                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                        
                                        HStack{
                                            Spacer()
                                            
                                            VStack{
                                                
                                                Text("CaPass")
                                                    .font(.title2)
                                                    .bold()
                                                    .foregroundColor(.black)
                                                
                                                Text("Aide aux seniors")
                                                    //.bold()
                                                    . font(.title3)
                                                    .padding(.all, 0.2)
                                            }
                                            
                                            Button {} label: {
                                                Image(systemName: "heart.fill").foregroundColor(Color.mypink)
                                                    .font(.title)
                                                    .padding(.bottom, 100)
                                            }
                                            .offset(x: -10, y: -30.0)
                                            // z ecriture
                                            
                                        } // Fin h stack
                                    } // fin z stack
                                ) // fin overlay
                            
                            Spacer()
                            
                        } // fin 2
                        
                        HStack{
                            Spacer()
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 160, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    ZStack{
                                        
                                        Image("image3")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 160, height: 220)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                        Color.white
                                            .opacity(0.6)
                                        
                                        Color.mypink.opacity(0.5)
                                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                        
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Text("Onela")
                                                    .bold()
                                                    .font(.title2)
                                                    .foregroundColor(.white)
                                                Text("Aide à la personne ")
                                                    //.bold()
                                                    .font(.title3)
                                                    .foregroundStyle(.white)
                                                    .padding(.all, 0.2)
                                                
                                            }
                                            .padding(.all,0.9)
                                            
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "heart.fill")
                                                    .font(.title)
                                                    .foregroundColor(Color.mypink)
                                                    .padding (.bottom, 100)
                                            }
                                            .offset(x: -10, y: -20.0)
                                        }
                                    }
                                ) //fin 3
                            
                            Spacer() //fin 1
                            
                            
                            
                            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                .frame(width: 160, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    ZStack{
                                        Image("image4")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 160, height: 220)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                        
                                        Color.white
                                            .opacity(0.6)
                                        
                                        HStack{
                                            Spacer()
                                            
                                            VStack{
                                                
                                                Text("CaPass")
                                                    .font(.title2)
                                                    .bold()
                                                    .foregroundColor(.black)
                                                
                                                Text("Aide à la personne ")
                                                    .font(.title2)
                                                    .padding(.all, 0.2)
                                            }
                                            
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "heart.fill")
                                                    .font(.title)
                                                    .foregroundColor(Color.mypink)
                                                    .padding (.bottom, 100)
                                            }
                                            .offset(x: -10, y: -10.0)
                                        }
                                    }
                                )
                            
                            Spacer()
                            
                        }//fin 4
                        
                        HStack{
                            Spacer()
                            
                            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                .frame(width: 170, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    
                                    ZStack{
                                        Image("image5")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 170, height: 170)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))                  .foregroundColor(.gray)
                                        Color.white
                                            .opacity(0.6)
                                        
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Text("ApaDom")
                                                    .bold()
                                                    .font(.title2)
                                                    .foregroundColor(.black)
                                                Text("Aide à la personne ")
                                                    //.bold()
                                                    .font(.title3)
                                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 0.3)
                                            }
                                            
                                            Button {} label: {
                                                Image(systemName: "heart.fill")
                                                    .font(.title)
                                                    .foregroundColor(Color.mypink)
                                                    .padding (.bottom, 100)
                                            }
                                            .offset(x: -10, y: -10.0)
                                        }
                                        
                                        Spacer()
                                    }
                                ) // fin5
                            
                            Spacer()
                            
                            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                .frame(width: 160, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    ZStack{
                                        Image("image6")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 160, height: 220)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                            .foregroundColor(.gray)
                                        
                                        Color.myyellow
                                            .opacity(0.7)
                                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                        
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Text(" Afev ")
                                                    .bold()
                                                    .font(.title2)
                                                    .foregroundColor(.black)
                                                
                                                Text("Aide aux Devoirs ")
                                                    //.bold()
                                                    . font(.title3)
                                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 0.3)
                                            }
                                            Button {} label: {
                                                Image(systemName: "heart.fill")
                                                    .font(.title)
                                                    .foregroundColor(Color.mypink)
                                                    .padding (.bottom, 100)
                                            }
                                            .offset(x: -10, y: -30.0)
                                        }
                                    }
                                ) //fin overlay
                            
                            Spacer()
                            
                        } // hFIN 6
                        
                        HStack{
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
                                            .foregroundColor(.white)
                                        
                                        Color.white
                                            .opacity(0.6)
                                        
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Text("Onela")
                                                    .bold()
                                                    .font(.title2)
                                                    .foregroundColor(.black)
                                                Text("Aide à la personne ")
                                                    //.bold()
                                                    .font(.title3)
                                                    .padding(.all, 0.2)
                                                
                                            }
                                            .padding(.all,0.9)
                                            
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "heart.fill")
                                                    .font(.title)
                                                    .foregroundColor(Color.mypink)
                                                    .padding (.bottom, 100)
                                            }
                                            .offset(x: -10, y: -20.0)
                                        }
                                    }
                                ) //fin 7
                            
                            Spacer()
                            
                            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                .frame(width: 170, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    ZStack{
                                        Image("image1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 170, height: 170)
                                            .clipped()
                                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                            .foregroundColor(.gray)
                                        Color.white
                                            .opacity(0.6)
                                        
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Text("Kigarde")
                                                    .bold()
                                                    .font(.title2)
                                                    .foregroundColor(.black)
                                                Text("Babysitting")
                                                    //.bold()
                                                    . font(.title3)
                                                    .padding(.all, 0.2)
                                            }
                                            
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "heart.fill")
                                                    .font(.title)
                                                    .foregroundColor(Color.mypink)
                                                    .padding (.bottom, 100)
                                            }
                                            .offset(x: -10, y: -10.0)
                                        }
                                    }
                                )
                            
                            Spacer()
                            
                        }//fin 8
                        
                        
                    } //fin grand  H
                }//fin de scrollview
            }
        } //fin grand  v
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    FavoriteView()
}
