//
//  MyMissions.swift
//  HumaniGo
//
//  Created by Apprenant157 on 23/09/2024.
//

import SwiftUI

struct MyMissions: View {
    var body: some View {
        VStack(spacing: 10){
            Text("Mes Missions")
                .font(.title)
                .bold()
            
            Spacer()
    
            FavoriteView()
        }
    }
}

#Preview {
    MyMissions()
}
