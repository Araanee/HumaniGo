//
//  CreateInitialProfil.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 20/09/2024.
//

import SwiftUI


var avis1: Feedback = Feedback(association:"Les Restos du Coeur", hearts: 2, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )

var avis2: Feedback = Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." )

var avis3: Feedback = Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )

func createInitialProfil() -> [Profil]
{
    return [Profil(nbmissions: 10, nbfeedbacks: 3.5, points: 530, feedbacks: [Feedback(association:"Les Restos du Coeur", hearts: 2, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" ),Feedback(association:"Soutien de France", hearts: 4, comment:"Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout." ),Feedback(association:"Soutien de France", hearts: 4, comment:"Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !" )],notification: ["bien inscrit"],info: InfoProfil(gender: Gender.female, firstname: "Emma", lastname: "TOTO", email: "emma@gmail.com", phone: "0600000001", pswd: "azerty123"))]
}

    
    
