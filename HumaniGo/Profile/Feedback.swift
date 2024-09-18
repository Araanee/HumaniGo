
//  Avis.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 16/09/2024.


import SwiftUI

struct Feedback
{
    var association: String
    var hearts : Int
    var comment : String
    
}

func displayfeedback(_ list:[Feedback]) -> some View
{
    //afficher tous les avis de la liste
    ScrollView  {
        ForEach(0..<list.count, id: \.self) { i in
            VStack (alignment: .center)
            {
                HStack (spacing: 0)
                {
                    affCoeurs(count: list[i].hearts)
                    Spacer()
                    Text(list[i].association)
                }
                .frame(width: 300)
                Rectangle().frame(width: 300, height: 1).foregroundStyle(Color.mypink)
                Text(list[i].comment).padding(.bottom, 40).frame(width: 300)
            }
            .padding()
            //.frame(width: 330)
        }
        
    }.frame(height: 200)
}
