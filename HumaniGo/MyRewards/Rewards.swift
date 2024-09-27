//
//  Mes Récompenses.swift
//  mesmissions
//
//  Created by Apprenant128 on 18/09/2024.
//

import SwiftUI

struct Rewards: View {
    var body: some View {
        
            Spacer()
            VStack{ Spacer(minLength: 15)
                Text(" Mes Récompenses").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                    .padding(.trailing, 130)
                
                
                ScrollView{
                    HStack{
                        ZStack{
                            Button(action: {}, label: {RectSize2(name: " - 20% au  Restaurant      solidaire   ", color:.pink, image: "p4")
                                
                            })
                        }
                        Button(action: {}, label: {RectSize1(name: "Correction de CV avec un professionel", color:.blue, image: "rdv")
                            
                            
                        })
                        
                    }
                    
                    VStack {
                        HStack  {
                            
                            
                            
                            Button(action: {}, label: {    RectSize1(name:" Récompense mystère", color: .blue, image: "p5")
                                
                                
                                
                                
                            })
                            
                            
                            Button(action: {}, label: {RectSize2(name: "1 entrée gratuite   au parc Asterix", color:.yellow, image:"p2")
                            })
                        }
                    }
                    
                    
                    HStack{
                        
                        Button(action: {}, label: {
                            RectSizeLarge(toto: "Une smartbox beauté", color: .white, imagee: "Smartbox")
                            
                            
                        })
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                }
        }
    }
}

#Preview {
    Rewards()
}
