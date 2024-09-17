//
//  MiniComposants.swift
//  Mes avis
//
//  Created by Apprenant151 on 13/09/2024.
//

import SwiftUI

//TOUTES FONCTIONS QUI RENVOIENT UN COMPOSANT
func affCoeurs(count: Int) -> some View {
    ForEach(0..<5, id: \.self) { _ in
        Image(systemName: "heart.fill")
            .foregroundColor(Color.mypink)
            .font(.system(size: 12))
    }
}

func rond(text:String, icon:String, nb:Double, _ color: Color) -> some View
{
    VStack
    {
        ZStack {
            Circle()
                .frame(width: 80)
                .foregroundColor(color)
            
            if (text == "Avis")
            {
                Text(String(nb) + "/5")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                // Comment on fait pour relier à un compteur de missions validées
            }
            else
            {
                Text(String(Int(nb)))
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
        Text(icon)
            .font(.system(size: 28))
            .fontWeight(.semibold)
            .padding(10)
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
    }
}
