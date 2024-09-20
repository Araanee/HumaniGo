//
//  ShareMissionData.swift
//  HumaniGo
//
//  Created by Apprenant157 on 18/09/2024.
//

import Foundation
import SwiftData

class ShareMissionData: ObservableObject {
    @Published var missions: [Mission]
    @Published var mission: Mission
    
    init(missions: [Mission], mission: Mission) {
        self.missions = missions
        self.mission = mission
    }
}

//@Model
//final class ShareProfilData {
//    @Attribute var profil: Profil
//    
//    init(profil: Profil) {
//        self.profil = profil
//    }
//}
