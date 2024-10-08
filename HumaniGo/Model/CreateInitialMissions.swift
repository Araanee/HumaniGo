//
//  CreateInitialMissions.swift
//  HumaniGo
//
//  Created by Apprenant157 on 20/09/2024.
//

import Foundation

func createInitialMissions() -> [Mission] {
    return [
        Mission(imageName: "imageMission",name: "Ramassage de déchets", association: "Ecolo Asso", description: """
Rejoignez-nous pour une mission de ramassage de déchets organisée par notre association. Ensemble, contribuons à rendre notre quartier plus propre et agréable à vivre. Rendez-vous sur place avec votre bonne humeur et votre motivation !
""", time: 4, reward: 40, date: Date(), address: "12 rue Marcel, 75013 Paris", members: 10),
        
        Mission(imageName: "aidePAgees", name: "Soutien aux Personnes Âgées", association: "Seniors & Compagnie", description: """
Visiter des personnes âgées en maison de retraite pour discuter, lire ou partager un moment convivial afin de lutter contre l'isolement.
""", time: 6, reward: 100, date: Date(), address: "15 Rue des Lilas, 75020 Paris", members: 7),
        
        Mission(imageName: "soutien-scolaire", name: "Soutien Scolaire", association: "Ensemble pour l’Éducation", description: """
Offrir du soutien scolaire aux enfants du primaire et du collège afin de les aider à réussir et à reprendre confiance en eux.
""", time: 2, reward: 60, date: Date(), address: "32 Rue des Écoles, 92100 Boulogne-Billancourt", members: 8),
        
        Mission(imageName: "handicap", name: "Action pour le Handicap", association: "Ensemble Autrement", description: """
Proposer des activités culturelles et sportives adaptées et accompagner les personnes en situation de handicap dans leur quotidien.
""", time: 5, reward: 50, date: Date(), address: "22 Boulevard de l’Amitié, 94800 Villejuif", members: 4),
        
        Mission(imageName: "SoutienMigrants", name: "Soutien aux Réfugiés et Migrants", association: "Accueil Sans Frontières", description: """
Proposer des cours de langue française et accompagner les réfugiés dans leurs démarches administratives pour favoriser leur intégration.
""", time: 2, reward: 50, date: Date(), address: "27 Rue de l’Accueil, 94000 Créteil", members: 10),
        
        Mission(imageName: "AideSsAbri", name: "Aide aux Sans-Abri", association: "Solidarité de Rue", description: """
Distribuer des repas chauds et des vêtements aux personnes sans-abri et les orienter vers des services d’aide sociale.
""", time: 3, reward: 30, date: Date(), address: "45 Avenue de la Fraternité, 93100 Montreuil", members: 5),
    
        Mission(imageName: "Soutien_linguistique", name: "Soutien linguistique", association: "Accueil Sans Frontières", description: """
Proposer des cours de soutien à l'apprentissage de la langue française.
""", time: 2, reward: 30, date: Date(), address: "55 Rue du soutien scolaire, 93210 La Plaine Saint-Denis", members: 10),
        
        Mission(imageName: "Spa calin", name: "Défendre la cause animale", association: "SPA", description: """
Aider les bénévoles de la SPA à améliorer la vie des animaux en refuge.
""", time: 2, reward: 30, date: Date(), address: "55 Rue du soutien scolaire, 93210 La Plaine Saint-Denis", members: 35),
    
    ]
}

let toto = Mission(imageName: "imageMission",name: "Ramassage de déchets", association: "Ecolo Asso", description: """
Rejoignez-nous pour une mission de ramassage de déchets organisée par notre association. Ensemble, contribuons à rendre notre quartier plus propre et agréable à vivre. Rendez-vous sur place avec votre bonne humeur et votre motivation !
""", time: 4, reward: 40, date: Date(), address: "12 rue Marcel, 75013 Paris", members: 10)
