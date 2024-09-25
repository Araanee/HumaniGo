//
//  Detail R2.swift
//  mesmissions
//
//  Created by Apprenant128 on 20/09/2024.
//

import SwiftUI

struct RectSize2: View {
    var name : String
    var color : Color
    var image: String
  
    var body: some View {
        
        
        ZStack{
            

            
            Image(image)
                .resizable()
            
                .clipped()
                .scaledToFill()
                .frame(width: 185, height: 255)
                .foregroundColor(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))

            
                .overlay(
                    ZStack{
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 185, height: 85, alignment: .center)
                            .foregroundColor(color)
                        Text(name).foregroundColor(.black)
                            .font(.title3).bold()
                            .frame(width: 185, height: 85)
                        
                        
                            .foregroundStyle(.white)
                    }.offset(y:-85)
                        .foregroundStyle(.white)
                    
                    
                    
                    
                )
                .clipped()
                .foregroundStyle(.white)
            
            
                .bold()
            
            DetailPoints(point: 250)
                .foregroundStyle(.white)
                .frame(width: 50, height:50)
                .offset(y:128)
            
            
        }
                    
    }
}

#Preview {
    RectSize2( name : "resultat" , color:.pink, image: "photo4")
}
