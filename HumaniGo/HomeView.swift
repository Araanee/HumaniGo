//
//  ContentView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI

struct HomeView: View {

    // handles the mission's details panel
    @State var showDetails = false
        
    var body: some View {
        ZStack {
            VStack {
                Text("Trouve ta mission")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                SearchBarView()
                SegmentedControlView()
                CardsView(showDetails: $showDetails)
                Spacer()
            }
        }
        .sheet(isPresented: $showDetails) {
            DetailsMissionView()
        }
        .onTapGesture {
            showDetails = false
        }
    }
}


#Preview {
    HomeView()
}
