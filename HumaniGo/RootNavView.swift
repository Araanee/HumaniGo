//
//  MainView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI
import SwiftData

struct RootNavView: View {
    
    @StateObject var navControl = NavigationControl()
    @Query var missions: [Mission]
    @StateObject var missionsData = ShareMissionData(missions: [Mission](), mission: toto)
    @StateObject var uidProfil: UIDProfile = UIDProfile()
    
    var body: some View {
        TabView(selection: $navControl.tabViewSelection) {
            HomeView()
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
                .tag(0)
            MyMissions()
                .tabItem {
                    Label("Mes Missions", systemImage: "list.clipboard")
                }
                .tag(1)
            if (uidProfil.connected)
            {
                NotificationsView()
                    .tabItem {
                        Label("Notifications", systemImage: "bell.badge")
                    }
                    .tag(2)
            }
            else
            {
                ConnexionView()
                    .tabItem {
                        Label("Notifications", systemImage: "bell.badge")
                    }
                    .tag(4)
            }
            if (uidProfil.connected)
            {
                ProfileView()
                    .tabItem {
                        Label("Profil", systemImage: "person.crop.circle")
                    }
                    .tag(3)
            }
            else
            {
                ConnexionView()
                    .tabItem {
                        Label("Profil", systemImage: "person.crop.circle")
                    }
                    .tag(4)
            }
            
        }
        .onAppear {
            missionsData.missions = missions
            missionsData.mission = missions[0]
        }
        .accentColor(Color.mypink)
        .environmentObject(navControl)
        .environmentObject(missionsData)
    }
}

struct RootNavView_Previews: PreviewProvider {
    static var previews: some View {
        RootNavView()
    }
}
