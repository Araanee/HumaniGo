//
//  Mission.swift
//  HumaniGo
//
//  Created by Apprenant157 on 16/09/2024.
//

import SwiftUI

struct Mission {
    var name : String
    var association : String
    var description :  String
    var time : Int
    var reward : Int
    var date : String
    var address : String
    var members : Int
    
    var addFavorite : Bool = false
    
    func addToFavorite() -> String {
        addFavorite ? "heart.fill" : "heart"
    }
}
