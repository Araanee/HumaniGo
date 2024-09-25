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
    @EnvironmentObject var uidProfil: UIDProfile
    
    
    var body: some View {
        ZStack {
            VStack {
                Text("Trouve ta mission")
                    .font(.title).bold().frame(maxWidth: .infinity, alignment: .leading)
                SearchBarView()
                SegmentedControlView()
                CardsView()
                Spacer()
            }
            
        }
        .sheet(isPresented: $navControl.dismissModal) {
            DetailsMissionView()
        }
        .sheet(isPresented: $navControl.dismissFilters) {
            FiltresView()
        }
        .onAppear{
            
        uidProfil.connected = true
        }
    }
}
