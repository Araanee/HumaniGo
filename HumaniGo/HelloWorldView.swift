//
//  HelloW.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 13/09/2024.
//

import SwiftUI

struct HelloWorldView: View {
    
    var body: some View {
        VStack
        {
            ZStack {
                Color.mypink.edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Image(systemName: "checkmark.seal").font(.system(size: 100)).font(.largeTitle).foregroundColor(.yellow)
                    
                    Text("Merci pour \r ton engagement !").multilineTextAlignment(.center).font(.system(size: 30)).font(.title).bold().foregroundColor(.white).padding(10)
                    
                    VStack
                    {
                        Text("Tu pourras retrouver \r cette mission dans la section").multilineTextAlignment(.center).font(.system(size: 20)).font(.title).italic().foregroundColor(.white)
                        Text("Mes Missions").font(.system(size: 20)).font(.title).bold().foregroundColor(.white)
                    }.padding(20)
                    
                    ZStack (alignment: .center)
                    {
                        /*
                        DelayedNavigationLink(delay: .seconds(3)) {
                                    CardsView(showDetails: $showDetails)
                                }
                         */
                    }
                }
                
            }
            
            
            
        }
    }
}

#Preview {
    HelloWorldView()
}
