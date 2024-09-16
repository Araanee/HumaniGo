//
//  Profile.swift
//  HumaniGo
//
//  Created by Apprenant157 on 16/09/2024.
//

import SwiftUI

struct Profile {
    var name: String
    var firstName: String
    var nbMissions: Int
    var nbFeedbacks: Int
    var points: Int
    var feedbacks = [Feedback].self
}
