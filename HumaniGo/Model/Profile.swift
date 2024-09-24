//

import SwiftUI
import SwiftData

@Model
class Profile
{
   @Attribute   var id: UUID
   @Attribute   var nbmissions: Int
   @Attribute   var nbfeedbacks: Double    //la note
   @Attribute   var points: Int             //score
    @Attribute   var feedbacks: [Feedback]
    @Attribute   var notification: [String] = []
    @Attribute  var info : InfoProfile
    
    
    init(id: UUID = UUID(), nbmissions: Int, nbfeedbacks: Double, points: Int, feedbacks: [Feedback], notification: [String], info: InfoProfile) {
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
    case female, male, other, nul
    var value: String{
        switch self {
        case .female:
            return "Femme"
        case .male:
            return "Homme"
        case .other:
            return "Autre"
        case .nul:
            return ""
        }
        
    }
    
    
}

struct InfoProfile: Codable
{
    var gender: Gender
    var firstname:String
    var lastname: String
    var email:String
    var phone:String
    var pswd:String
}

