//

import SwiftUI

struct Profil
{
    var id = UUID()
    var nbmissions: Int
    var nbfeedbacks: Double    //la note
    var points: Int             //score
    var feedbacks: [Feedback]
    var notification: [String] = ["Tu as reçu des points\rTu as débloqué des récompenses"]
    var info : InfoProfil
    
}

enum Gender {
    case female, male, other
}

struct InfoProfil
{
    var gender: Gender
    var firstname:String
    var lastname: String
    var email:String
    var phone:String
    var pswd:String
}


