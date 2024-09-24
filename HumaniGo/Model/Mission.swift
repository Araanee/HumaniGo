//
//  Mission.swift
//  HumaniGo
//
//  Created by Apprenant157 on 16/09/2024.
//

import SwiftUI
import SwiftData

@Model
class Mission: Identifiable {
    @Attribute var id = UUID()
    @Attribute var imageName: String
    @Attribute var name: String
    @Attribute var association: String
    @Attribute var missionDescription: String
    @Attribute var time: Int
    @Attribute var reward: Int
    @Attribute var date: Date
    @Attribute var address: String
    @Attribute var members: Int
    @Attribute var addFavorite: Bool = false
    @Attribute var isEngaged: Bool = false
    
    init(imageName: String, name: String, association: String, description: String, time: Int, reward: Int, date: Date, address: String, members: Int) {
            self.imageName = imageName
            self.name = name
            self.association = association
            self.missionDescription = description
            self.time = time
            self.reward = reward
            self.date = date
            self.address = address
            self.members = members
        }
    
    func addToFavorite() -> String {
        addFavorite ? "heart.fill" : "heart"
    }
    
}
