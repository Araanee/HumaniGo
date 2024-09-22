//
//  HumaniGoApp.swift
//  HumaniGo
//
//  Created by Apprenant157 on 11/09/2024.
//

import SwiftUI
import SwiftData

@main
struct HumaniGoApp: App {
    
    // Création du conteneur de modèle avec les entités
    var container: ModelContainer
    init() {
        do {
            container = try ModelContainer(for: Mission.self, Profile.self)
            
            // Vérifiez si le modèle contient déjà des données
            if try !container.mainContext.fetch(FetchDescriptor<Mission>()).isEmpty {
                // Si des missions existent déjà, ne pas ajouter de données initiales
                print("Missions already exist. Skipping initialization.")
            } else {
                // Ajouter les missions initiales dans le contexte
                let initialMissions = createInitialMissions()
                for mission in initialMissions {
                    container.mainContext.insert(mission)
                }
                // Sauvegarder le contexte
                try container.mainContext.save()
                print("Initial missions have been added to the database.")
            }
            
            if try !container.mainContext.fetch(FetchDescriptor<Profile>()).isEmpty
            {
                print("Profils already exist. Skipping initialization.")
            }
            else
            {
                let initProfils = createInitialProfil()
                for profil in initProfils
                {
                    container.mainContext.insert(profil)
                }
                try container.mainContext.save()
                print("Initial profil have been added to the database.")
            }
        } catch {
            fatalError("Failed to initialize ModelContainer: \(error)")
        }
        
        
        
    
}

var body: some Scene {
    WindowGroup {
        RootNavView()
            .modelContainer(container) // Associe le conteneur au contenu de l'application
        //.modelContainer(for: Profil.self)
    }
}
}

