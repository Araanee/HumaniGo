//
//  CreateInitialProfil.swift
//  HumaniGo
//
//  Created by Apprenant 157 on 20/09/2024.
//

import SwiftUI



var avis1: Feedback = Feedback(association:"Les Restos du Coeur", hearts: 5, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )

var avis2: Feedback = Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." )

var avis3: Feedback = Feedback(association:"Soutien de France", hearts: 4, comment:"Emma maîtrise la langue française autant que l'anglais, et elle est d'une patience à toute épreuve avec tous les élèves" )

var avis4: Feedback = Feedback(association:"SPA Genevilliers", hearts: 5, comment:"Emma adore les animaux, et ils le lui rendent bien. Elle est aussi bien volontaire pour la distribution de nourriture que les calins." )

var avis5: Feedback = Feedback(association:"Kleenit", hearts: 4, comment:"C'était une mission pénible, mais Emma a passé 3 heures à nettoyer la Seine avec nous un samedi matin. Merci pour ta bonne humeur." )

func createInitialProfil() -> [Profile]
{
    return [Profile(nbmissions: 10, nbfeedbacks: 4.5, points: 530, feedbacks: [],notification: [],info: InfoProfile(gender: Gender.female, firstname: "Emma", lastname: "TOTO", email: "emma@gmail.com", phone: "0600000001", pswd: "azerty123"))]
}
