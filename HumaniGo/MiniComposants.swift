//
//  MiniComposants.swift
//  Mes avis
//
//  Created by Apprenant151 on 13/09/2024.
//

import SwiftUI

//TOUTES FONCTIONS QUI RENVOIENT UN COMPOSANT
func affCoeurs(count: Int) -> some View {
    HStack (spacing: 0)
    {
        ForEach(0..<5, id: \.self) { _ in
            
            Image(systemName: "heart.fill")
                .foregroundColor(Color.mypink)
                .font(.system(size: 12))
            
        }
    }
}
