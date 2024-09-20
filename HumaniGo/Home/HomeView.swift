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
    @EnvironmentObject var missionsData: ShareMissionData
    
    var body: some View {
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
    }
}


//#Preview {
//    HomeView()
//}
