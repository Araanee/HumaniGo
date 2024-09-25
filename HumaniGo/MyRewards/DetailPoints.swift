//
//  circle.swift
//  mesmissions
//
//  Created by Apprenant128 on 20/09/2024.
//

import SwiftUI

struct DetailPoints: View {
    var point : Int
  
    var body: some View {
     
        
        ZStack{

            Circle()
        
                .trim(from:-0, to:0.5)
         
                .frame(width: 100, height: 100)
          
                .rotationEffect(.degrees(-180))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
           
                Text("\(point) pts")
               
                .offset(y:-20).bold()
           
                        
        }
    }
}

#Preview {
    DetailPoints(point:0)
}
