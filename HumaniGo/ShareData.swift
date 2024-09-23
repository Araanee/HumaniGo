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

class UIDProfile:ObservableObject
{
    @Published var connected = false
    @Published var engaged = false
    @Published var email : String = ""
    @Published var idx : Int = 0
    
}
