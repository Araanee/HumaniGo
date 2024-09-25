//
//  FinishedView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 23/09/2024.
//

import SwiftUI

struct FinishedView: View {
    var body: some View {
        VStack(spacing: 10) {
            ScrollView{
                HStack{
                    Spacer()
                    
                    REmissiondetail(titre: "Malice & co", couleur: .black, image:"aidePAgees", titre2: "Aide à la Personne ").font(.title2)

                    Spacer()

                    REmissiondetail2(titre: "fapil", couleur:.mypink, image:"soutien-scolaire", titre2: "Soutin scolaire  ").font(.title2)

                    Spacer()
                }
            }//fin de scrollview
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    FinishedView()
}
