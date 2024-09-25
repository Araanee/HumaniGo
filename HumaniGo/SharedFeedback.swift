//
//  HelloW.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 13/09/2024.
//

import SwiftUI

struct SharedFeedback: View {
    @EnvironmentObject var navControl: NavigationControl
    @EnvironmentObject var uidProfil: UIDProfile
    
    var body: some View {
        VStack
        {
            
            ZStack {
                Color.myblue
                
                VStack{
                    
                    Image(systemName: "checkmark.seal").font(.system(size: 100)).font(.largeTitle).foregroundColor(.yellow)
                    
                    Text("Merci pour \r ton avis !").multilineTextAlignment(.center).font(.system(size: 30)).font(.title).bold().foregroundColor(.white).padding(10)
                    
                    VStack
                    {
                        Text("L'association sera heureuse de lire ton retour. ").multilineTextAlignment(.center).font(.system(size: 20)).font(.title).italic().foregroundColor(.white)
                    }.padding(20)
                }
                DelayedNavigationLink(delay: .seconds(2)) {
                
                    NotificationsView()
                }

            }
            .onTapGesture {
                navControl.tabViewSelection = 2
            }
            
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    SharedFeedback()
        .environmentObject(NavigationControl())
}

