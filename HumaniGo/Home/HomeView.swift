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
                Spacer()
                Text("Trouve ta mission")
                    .font(.title).bold()
                    .padding(.trailing, 130)
                
                SearchBarView()
                SegmentedControlView()
                CardsView()
                Spacer()
                Spacer()
            }
            
        }
        .sheet(isPresented: $navControl.dismissModal) {
            DetailsMissionView()
        }
        .sheet(isPresented: $navControl.dismissFilters) {
            FiltersView()
        }
    }
}
