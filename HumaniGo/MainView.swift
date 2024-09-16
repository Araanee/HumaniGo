//
//  MainView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
            MesMission()
                .tabItem {
                    Label("Mes Missions", systemImage: "list.clipboard")
                }
            HomeView()
                .tabItem {
                    Label("Notifications", systemImage: "bell.badge")
                }
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.crop.circle")
                }
        }
        .accentColor(Color.mypink)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
