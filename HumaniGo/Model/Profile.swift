//

import SwiftUI
import SwiftData

@Model
class Profil
{
   @Attribute   var id: UUID
   @Attribute   var nbmissions: Int
   @Attribute   var nbfeedbacks: Double    //la note
   @Attribute   var points: Int             //score
    @Attribute   var feedbacks: [Feedback]
    @Attribute   var notification: [String] = ["Tu as reçu des points\rTu as débloqué des récompenses"]
    @Attribute  var info : InfoProfil
    
    
    init(id: UUID = UUID(), nbmissions: Int, nbfeedbacks: Double, points: Int, feedbacks: [Feedback], notification: [String], info: InfoProfil) {
        self.id = id
        self.nbmissions = nbmissions
        self.nbfeedbacks = nbfeedbacks
        self.points = points
        self.feedbacks = feedbacks
        self.notification = notification
        self.info = info
    }
}

enum Gender: Codable {
    case female, male, other
}

struct InfoProfil: Codable
{
    var gender: Gender
    var firstname:String
    var lastname: String
    var email:String
    var phone:String
    var pswd:String
}
