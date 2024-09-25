//
//  REmissiondetail2.swift
//  HumaniGo
//
//  Created by Apprenant128 on 24/09/2024.
//

import SwiftUI

struct REmissiondetail2: View {
    var titre : String
    var  couleur  : Color
    var image :String
    var titre2:String
    @State var bouto : String = "heart.fill"
   
    var body: some View {
        

            
        ZStack{
            
          
            Image(image)
                
                .frame(width: 160, height: 250)
                .cornerRadius(15)
                .opacity(0.7)
         
          
                 .overlay {
                     ZStack {
                         couleur.opacity(0.7).cornerRadius(15)
                             
                         VStack{
                             
                             
                             Text(titre)
                                 .font(.title).bold().foregroundColor(couleur == .Pink ? .white: .black).frame(maxWidth: 130)
                                 

                             Text(titre2).foregroundColor(couleur == .Pink ? .white: .black).frame(maxWidth: 130)

                         }
                         
                         Button(action: {
                             if bouto == "heart.fill"{
                                 bouto = "heart"
                             } else
                             {
                                 bouto = "heart.fill"
                             }
                             
                             
                             
                         }    , label: {  Image(systemName: bouto )
                                 .foregroundColor(Color.white)
                             
                                 .font(.title)
                                 .padding (.bottom, 200).offset(x: 50)
                             
                             
                             
                         })
                         
                         
                     }
                 }
            
        }
        
            
    }
}

#Preview {
    REmissiondetail2(titre:"ittre",couleur :.Pink,image : "image1" , titre2:"lol")
    

}
