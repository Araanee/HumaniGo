//
//  ContentView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI
import SwiftData

struct HomeView: View {

    @EnvironmentObject var navControl: NavigationControl
    @Query var missions: [Mission]
    @EnvironmentObject var missionsData: ShareMissionData
    
    var body: some View {
//        missionsData = ShareMissionData(missions: missions, mission: missions[0])
        ZStack {
            VStack {
                Text("Trouve ta mission")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                SearchBarView()
                SegmentedControlView()
                CardsView()
                Spacer()
            }
        }
        .sheet(isPresented: $navControl.dismissModal) {
            DetailsMissionView()
        }
        
//
    }
}


//#Preview {
//    HomeView()
//}
