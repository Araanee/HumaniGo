//
//  detailcarré.swift
//  mesmissions
//
//  Created by Apprenant128 on 20/09/2024.
//

import SwiftUI

struct RectSizeLarge: View {
    var toto : String
    var color : Color
    var imagee: String
    
    var body: some View {   ZStack{
        
        
        Image(imagee)
      
           
            .resizable()
           
            .clipped()
            .scaledToFill()
            .frame(width: 350, height: 255)
            .foregroundColor(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            .opacity(0.5)
            
       
            .overlay(
                ZStack{
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(width: 350, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                    Text("Une smartbox beauté").font(.title3).bold()
                        .frame(width: 180, height: 85).foregroundColor(color)
                        
                    
                        .foregroundStyle(.white)
                }.offset(y:-100)
                    .foregroundStyle(.white)
                
             
              
                
            )
            .clipped()
            .foregroundStyle(.white)
            .bold()
        
          
        DetailPoints(point: 300)
            .frame(width: 50, height:50)
            .foregroundStyle(.white)
            .offset(y:127)
      
            
    }
        
       
}
        
    }


#Preview {
   RectSizeLarge(toto :"titre" , color:.black, imagee:"p3" )
}
