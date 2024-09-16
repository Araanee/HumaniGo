//
//  MiniComposants.swift
//  Mes avis
//
//  Created by Apprenant151 on 13/09/2024.
//

import SwiftUI

//TOUTES FONCTIONS QUI RENVOIENT UN COMPOSANT
func affCoeurs(count: Int) -> some View {
    ForEach(0..<6, id: \.self) { _ in
        Image(systemName: "heart.fill")
            .foregroundColor(Color("Rose"))
            .font(.system(size: 12))
        
    }
}
