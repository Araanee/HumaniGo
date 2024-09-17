//
//  Mission.swift
//  mesmissions
//
//  Created by Apprenant128 on 12/09/2024.
//

import SwiftUI

struct Favorite: View {
  
    var body: some View
    {
        VStack{
            Text("Mes Missions")
                .font(.title)
                .bold()
                
             Spacer()
            
             HStack{
                 Spacer()
              
                 Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                     Text("Favoris") .padding()
                            .foregroundColor(.white)
                            .background(Color.myblue)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                  })
                 
                Spacer() //b1
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("À Venir ").padding()
                        .foregroundColor(.white)
                        .background(.gray) .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                      
                })
                 
                Spacer() // fin b2

                Button(action: {}, label: {
                    Text("Terminées").padding()
                            .foregroundColor(.white)
                            .background(.gray) .clipShape(RoundedRectangle(cornerRadius: 25))
                       
                       
                    })
                Spacer()        //fin bouton 3
            }          // fin grand H
            
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
                                    
                                    Image("image1")
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
                                                Text("épicerie sociale ")
                                                    .bold()
                                                    .font(.title)
                                                    .foregroundColor(.black)
                                                
                                                 Text("Aide à la personne ")
                                                     . font(.title2)
                                                     .bold()
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
                                    Image("image2")
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
                                            
                                            Text("CaPAss")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.black)
                                           
                                            Text("Aide à la personne ")
                                                .bold()
                                                . font(.title2)
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
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .frame(width: 160, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(
                                ZStack{
                                    
                                    Image("image3")
                                    
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
                                                .font(.title)
                                                .foregroundColor(.black)
                                            Text("Aide à la personne ")
                                                .bold().font(.title2)
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
                        
                        Spacer()
                    
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .frame(width: 170, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(
                                ZStack{
                                    Image("image4")
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
                                            Text("Onela")
                                                .bold()
                                                .font(.title)
                                                .foregroundColor(.black)
                                            Text("Aide à la personne ")
                                                .bold()
                                                . font(.title2)
                                                .padding(.all, 0.2)

                                        }
                                        
                                    }// fin z texte
                                }//fin  zstack
                            )
                  
                        Spacer()
                        
                        //fin 1
                        
                        
                        
                        
                        
                        
                        
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
                                            
                                            Text("CaPAss")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.black)
                                           
                                            Text("Aide à la personne ")
                                                .bold()
                                                . font(.title2)
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
                                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                .foregroundColor(.black)
                                            Text("Aide à la personne ")
                                                .bold()
                                                .font(.title2)
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
                                        Color.white
                                        .opacity(0.6)
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Text(" Afev ")
                                                    .bold()
                                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                    .foregroundColor(.black)
                                                
                                                Text("Aide aux Devoirs ")
                                                    .bold()
                                                    . font(.title2)
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
                                                .font(.title)
                                                .foregroundColor(.black)
                                            Text("Aide à la personne ")
                                                .bold().font(.title2)
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
                                            Text("Onela")
                                                .bold()
                                                .font(.title)
                                                .foregroundColor(.black)
                                            Text("Aide à la personne ")
                                                .bold()
                                                . font(.title2)
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
        } //fin grand  v
    }
}

#Preview {
    Favorite()
}
