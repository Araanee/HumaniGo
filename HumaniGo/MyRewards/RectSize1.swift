//
//  Détail R.swift
//  mesmissions
//
//  Created by Apprenant128 on 18/09/2024.
//

import SwiftUI

struct RectSize1: View {
    var name : String
    var color : Color
    var image: String
    
    
    
    
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
            
                .frame(width: 165, height: 260)
                .clipped()
                .scaledToFill()
                .foregroundColor(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .overlay(
                    ZStack{
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 165, height: 85, alignment: .center)
                            .foregroundColor(color)
                        Text(name)
                            .font(.title3).bold()
                            .frame(width: 165, height: 85)
                        
                            .foregroundStyle(.white)
                    }
                        .offset(y:-85)
                        .foregroundStyle(.white)
                    
                )
                .clipped()
                .foregroundStyle(.white)
            
            
                .bold()
            DetailPoints(point: 150)
            
         
            
                .foregroundStyle(.white)
                .frame(width: 50, height:50)
                .offset(y:130)
            
        }
    }
}



#Preview {
    RectSize1( name : "activité" , color:.pink, image: "p1" )
}
