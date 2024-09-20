//
//  ContentView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI

var missionTest = Mission(imageName: "imageMission", name: "Ramassage de déchets", association: "Ecolo Asso", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean convallis diam a vehicula egestas. Maecenas tristique, justo vel hendrerit euismod, justo ex hendrerit diam, sit amet placerat leo enim quis lorem.
""", time: 2, reward: 50, date: Date(), address: "4 rue Saint Martin, Paris 75015", members: 2)

struct HomeView: View {

    @EnvironmentObject var navControl: NavigationControl
    @StateObject var missionObject = ShareMissionData(mission: Mission(imageName: "imageMission",name: "Ramassage de déchets", association: "Ecolo Asso", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean convallis diam a vehicula egestas. Maecenas tristique, justo vel hendrerit euismod, justo ex hendrerit diam, sit amet placerat leo enim quis lorem.
""", time: 2, reward: 50, date: Date(), address: "4 rue Saint Martin, Paris 75015", members: 2))
        
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
        .environmentObject(missionObject)
    }
}


//#Preview {
//    HomeView()
//}
