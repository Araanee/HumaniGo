//
//  MainView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI

struct RootNavView: View {
    @StateObject var navControl = NavigationControl()
    var body: some View {
        TabView(selection: $navControl.tabViewSelection) {
            HomeView()
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
                .tag(0)
            Favorite()
                .tabItem {
                    Label("Mes Missions", systemImage: "list.clipboard")
                }
                .tag(1)
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell.badge")
                }
                .tag(2)
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.crop.circle")
                }
                .tag(3)
        }
        .accentColor(Color.mypink)
        .environmentObject(navControl)
    }
}

struct RootNavView_Previews: PreviewProvider {
    static var previews: some View {
        RootNavView()
    }
}
