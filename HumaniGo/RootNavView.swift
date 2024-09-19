//
//  MainView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI

struct RootNavView: View {
    @StateObject var navControl = NavigationControl()
    

    @StateObject var shared: ShareProfilData = ShareProfilData(profil: Profil(nbmissions: 10, nbfeedbacks: 3.5, points: 530, feedbacks: [Feedback(association:"Les Restos du Coeur", hearts: 2, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" ),
                                                                                                                                         Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." ),Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )],info: InfoProfil(gender: Gender.female, firstname: "Emma", lastname: "TOTO", email: "emma@gmail.com", phone: "0600000001", pswd: "azerty123")
 ))
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
        .environmentObject(shared)
    }
}

struct RootNavView_Previews: PreviewProvider {
    static var previews: some View {
        RootNavView()
    }
}
