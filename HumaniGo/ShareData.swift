//
//  ShareMissionData.swift
//  HumaniGo
//
//  Created by Apprenant157 on 18/09/2024.
//

import Foundation

class ShareMissionData: ObservableObject {
    @Published var mission: Mission
    
    init(mission: Mission) {
        self.mission = mission
    }
}

class ShareProfilData: ObservableObject {
    @Published var profil: Profil
    
    init(profil: Profil) {
        self.profil = profil
    }
}
