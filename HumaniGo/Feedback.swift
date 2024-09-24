
//  Avis.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 16/09/2024.


import SwiftUI

struct Feedback: Codable
{
    var association: String
    var hearts : Int
    var comment : String
}

func displayfeedback(_ list:[Feedback]?) -> some View
{
    
        //afficher tous les avis de la liste
        ScrollView  {
            if list?.count == 0 {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Text("Aucun avis pour l'instant !")
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    .frame(height: 200)
                    Spacer()
                }
            } else {
                ForEach(0..<(list?.count ?? 0), id: \.self) { i in
                    VStack (alignment: .center)
                    {
                        HStack
                        {
                            affCoeurs(count: list![i].hearts)
                            Spacer()
                            Text(list![i].association)
                        }
                        Rectangle().frame(height: 1).foregroundStyle(Color.mypink)
                        Text(list![i].comment)
                    }
                    .padding()
                }
            }
        }.frame(height: 200)
}
