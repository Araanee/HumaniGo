//
//  REmissiondetail.swift
//  HumaniGo
//
//  Created by Apprenant128 on 24/09/2024.
//

import SwiftUI

struct REmissiondetail: View {
    var titre : String
    var  couleur  : Color
    var image  :String
    var titre2:String
    @State var bouto : String = "heart.fill"
    var body: some View {
       
        
        
        ZStack{ 
           
        
           Image(image)
                .frame(width: 160, height: 260)
                .cornerRadius(15)
             
                .foregroundColor(couleur)
        
                .opacity(0.19)
        
             
            VStack{
                
                
                Text(titre).foregroundColor(.black)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().frame(maxWidth: 130)
                Text(titre2).bold().frame(maxWidth: 130)
            }
            Button(action: { 
                if bouto == "heart.fill" {
                    bouto = "heart"
                } else
                {
                    bouto = "heart.fill"
                }
            }, label: {  Image(systemName: bouto )
                    .foregroundColor(Color.mypink)
                        .font(.title)
                        .padding (.bottom, 200)
              
            })
            .offset(x: 50)
        }
        .frame(width: 160, height: 260)
        
    }
}

#Preview {
    REmissiondetail(titre:"LONG TTTTTittre", couleur : Color.myblue,  image : "image1" , titre2: "lol")
    
}
