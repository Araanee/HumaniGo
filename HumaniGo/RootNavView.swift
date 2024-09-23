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
    @State private var test = false
    
    var body: some View {
        
        if !test {
            Launch(test: $test)
        } else {
        
        
        TabView(selection: $navControl.tabViewSelection) {
            
            // Search for missions page
            HomeView()
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
                .tag(0)
            
            // My missions page if connected
            if (uidProfil.connected){
                MyMissions()
                    .tabItem {
                        Label("Mes Missions", systemImage: "list.clipboard")
                    }
                    .tag(1)
            }
            else
            {
                ConnexionView()
                    .tabItem {
                        Label("Mes Missions", systemImage: "list.clipboard")
                    }
                    .tag(1)
            }
            
            // Notifications page if connected
            if (uidProfil.connected)
            {

                NotificationsView()
                    .tabItem {
                        Label("Notifications", systemImage: "bell.badge")
                    }
                    .tag(2)
            }
            else {
                ConnexionView()
                    .tabItem {
                        Label("Notifications", systemImage: "bell.badge")
                    }
                    .tag(2)
            }
            
            // Profile page if connected
            if (uidProfil.connected){
                ProfileView()
                    .tabItem {
                        Label("Profil", systemImage: "person.crop.circle")
                    }
                    .tag(3)
            }
            else {
                ConnexionView()
                    .tabItem {
                        Label("Profil", systemImage: "person.crop.circle")
                    }
                    .tag(3)
            }
        }
        .onAppear {
            missionsData.missions = missions
            missionsData.mission = missions[0]
        }
        .accentColor(Color.mypink)
        .environmentObject(navControl)
        .environmentObject(missionsData)
        .environmentObject(uidProfil)
        .navigationBarBackButtonHidden()
    }
    }
}

struct RootNavView_Previews: PreviewProvider {
    static var previews: some View {
        RootNavView()
    }
}
