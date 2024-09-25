//
//  AvenirView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 23/09/2024.
//

import SwiftUI

struct AvenirView: View {
    var body: some View {
        VStack(spacing: 10) {
            
            ScrollView{
                VStack{ 
                    Spacer(minLength: 20)
                    
                    HStack {
                    
                   
                        Spacer()
                        REmissiondetail(titre: "Onela", couleur: .black, image:"aidePAgees", titre2: "Aide  à la personne").font(.title2).bold()
                        Spacer()
                        
                        
                        
                        REmissiondetail(titre: " Afev ", couleur: .white, image:"soutien-scolaire", titre2: "Aide aux \r Devoirs").font(.title2).bold()
                           
                        Spacer()
                    }
                    
                    
                }
            }//fin de scrollview
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    AvenirView()
}
