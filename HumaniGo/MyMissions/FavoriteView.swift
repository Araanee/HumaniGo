//
//  Mission.swift
//  mesmissions
//
//  Created by Apprenant128 on 12/09/2024.
//

import SwiftUI

struct FavoriteView: View {
  
    var body: some View
    {
        VStack(spacing: 10){
                ScrollView{
                    VStack{
                        HStack{
                            Spacer()
                            
                            REmissiondetail(titre: " Épicerie sociale ", couleur:Color.mypink, image:"image1", titre2:"     Aide à \r la personne ").font(.title2) .bold()
                            
                            Spacer()
                            
                            REmissiondetail2(titre: "Afev", couleur: .yellow, image: "imageMission", titre2: "  Activité  écologique").font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Spacer()
                          
                            REmissiondetail2(titre: "Onela", couleur:Color.mypink, image: "aidePAgees", titre2: "  Aide  à la personne  ").font(.title2).bold()
                            
                            Spacer()
                            
                            REmissiondetail(titre:"Afev", couleur: .pink, image: "soutien-scolaire", titre2: " Aide aux \r Devoirs   ")
                                .font(.title2).bold()
                            
                            Spacer()
                        }
                  
                        
                        HStack{
                            Spacer()
                            
                            REmissiondetail(titre: "Kigarde", couleur:Color.mypink, image: "image5", titre2: " Activités  \r pour enfants")
                                .font(.title2).bold()
                           
                            Spacer()
                           
                            REmissiondetail2(titre: "CaPass", couleur: .yellow, image: "imageMission", titre2: "  Activité  écologique").font(.title2).bold()
                            
                            Spacer()
                        }
                    }
                    
                }//fin de scrollview
        } //fin grand  v
    }
}

#Preview {
    FavoriteView()
}
