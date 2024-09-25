//
//  SwiftUIView.swift
//  mesmissions
//
//  Created by Apprenant128 on 22/09/2024.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        Text("Harry potter " ).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
        Image(systemName: "sparkles")
      
      
        VStack{
            ZStack{
          
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Rectangle().frame(width: 240, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.pink)
                 Image("harry")}
            
     
                
           
  
            
        }
        
        
        
    }
    
}

#Preview {
    SwiftUIView()
}
