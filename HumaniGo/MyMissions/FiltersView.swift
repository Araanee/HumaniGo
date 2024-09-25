//
//  Filters.swift
//
//  Created by Apprenant151 on 19/09/2024.
//

import SwiftUI

var days = ["L", "Ma", "Me", "J", "V", "S", "D"]
var periods = ["Matin", "Après-midi", "Soir"]
var causes = ["Animale", "Soutien scolaire ou linguistique", "Alimentaire", "Écologie"]

struct FiltersView: View {
    
    @EnvironmentObject var navControl: NavigationControl
    @State var searchText: String = ""
    @State var distance: Double = 5 // Valeur initiale du slider entre 1 et 30
    @State private var selectedDay: String = "" // Pour le jour sélectionné
    @State private var selectedPeriod: String = "" // Pour la période sélectionnée
    @State private var selectedCause: String = "" // Pour la cause sélectionnée

    var body: some View {
        
    ZStack (alignment: Alignment(horizontal: .center, vertical: .top))
            {
                RoundedRectangle(cornerRadius: 15.0).strokeBorder(Color.pink,lineWidth: 5).frame(width: 410,height: 100)
                    .padding(-7)
                Rectangle().foregroundColor(.white)
                    .frame(width: 400,height: 90).padding()
        
        VStack(alignment: .leading, spacing: 30) {

    // Ma localisation
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        
                    TextField("Ma localisation", text: $searchText)
                        .padding(.vertical, 10)
                        .padding(.leading, 5)
                }
                .padding(.horizontal)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)

//       // Slider avec cadre arrondi
                VStack {
                    Text("\(Int(distance)) km autour de moi")
                                    .font(.title3)
                                    .bold()
                                    .padding(.bottom, 1)
                    HStack {
                        Image(systemName: "location.circle")
                            .foregroundColor(.blue)
                            .padding(.leading, 30)
                       
                        Slider(value: $distance, in: 1...30, step: 1)
                            .accentColor(.blue)
                            .padding(.horizontal, 10)
                            .frame(height: 3)
                    }
                    .frame(height: 20)
                       
                    HStack {
                        Text("1 km")
                            .padding(.leading, 60)
                        Spacer()
                        Text("30 km")
                            .padding(.trailing, 20)
                    }
                    
                        
                }
                .padding(.top, 30)

    // Mes disponibilités
                Text("Mes disponibilités")
                    .font(.title2).bold()
                    .padding(.leading, 20)
                    
    // Ronds des jours de la semaine
                HStack {
                    ForEach(days, id: \.self) { day in
                        ZStack {
                            Circle()
                                .stroke(selectedDay == day ? Color.pink : Color.black, lineWidth: 1)
                                .frame(width: 40, height: 40)
                                .padding(3)
                                
                            Text(day)
                                .foregroundColor(selectedDay == day ? .pink : .black)
                                .onTapGesture {
                                    selectedDay = day
                                }
                        }
                    }
                }
                .padding(.horizontal)
                    
    // Matin, Après-midi, Soir
            HStack(alignment: .center) {
                    ForEach(periods, id: \.self) { period in
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(selectedPeriod == period ? Color.pink : Color.black, lineWidth: 1)
                                .frame(width: 100, height: 40)
                                
                            Text(period)
                                .foregroundColor(selectedPeriod == period ? .pink : .black)
                                .onTapGesture {
                                    selectedPeriod = period
                                }
                        }
                        .padding(5)
                    }
                }
                .padding(.horizontal)
                    
        // Cause
            Text("Cause")
                .font(.title2).bold()
                .padding(.leading, 20)
                    
            HStack {
                Spacer()
                    VStack {
                        ZStack {
                            Circle()
                                .stroke(selectedCause == "Animale" ? Color.pink : Color.black, lineWidth: 1)
                                .frame(width: 50, height: 50)
                            
                            Image(systemName: "pawprint")
                                .foregroundColor(selectedCause == "Animale" ? .pink : .black)
                               
                        }
                        .padding(.bottom, 5)
                        .onTapGesture {
                            selectedCause = "Animale"
                        }
                            Text("Animale")
                                .font(.caption)
                                .foregroundColor(.black)
                                .onTapGesture {
                                    selectedCause = "Animale"
                                }
                                .frame(width: 75, height: 80, alignment: .top)
                                
                                
                    }
                        VStack {
                            ZStack {
                                Circle()
                                    .stroke(selectedCause == "Soutien scolaire ou linguistique" ? Color.pink : Color.black, lineWidth: 1)
                                    .frame(width: 50, height: 50)
                            
                                Image(systemName: "book.fill")
                                    .foregroundColor(selectedCause == "Soutien scolaire ou linguistique" ? .pink : .black)
                                
                            }
                            .padding(.bottom, 5)
                            .onTapGesture {
                                selectedCause = "Soutien scolaire ou linguistique"
                            }
                                Text("Soutien \r scolaire ou  \rlinguistique")
                                .font(.caption)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .onTapGesture {
                                    selectedCause = "Soutien scolaire ou linguistique"
                                    }
                                .frame(width: 75, height: 80, alignment: .top)
                              
                            }
                        VStack {
                            ZStack {
                                Circle()
                                    .stroke(selectedCause == "Alimentaire" ? Color.pink : Color.black, lineWidth: 1)
                                    .frame(width: 50, height: 50)
                                Image(systemName: "fork.knife")
                                    .foregroundColor(selectedCause == "Alimentaire" ? .pink : .black)
                                }
                                .padding(.bottom, 5)
                                .onTapGesture {
                                    selectedCause = "Alimentaire"
                                        }
                                Text("Aide alimentaire")
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .onTapGesture {
                                        selectedCause = "Alimentaire"
                                        }
                                    .frame(width: 75, height: 80, alignment: .top)
                        }
                        VStack {
                            ZStack {
                                Circle()
                                    .stroke(selectedCause == "Écologie" ? Color.pink : Color.black, lineWidth: 1)
                                    .frame(width: 50, height: 50)
                                Image(systemName: "leaf.fill")
                                    .foregroundColor(selectedCause == "Écologie" ? .pink : .black)
                               }
                            .padding(.bottom, 5)
                            .onTapGesture {
                                selectedCause = "Écologie"
                            }
                            Text("Écologie")
                                .font(.caption)
                                .foregroundColor(.black)
                                .onTapGesture {
                                    selectedCause = "Écologie"
                                }
                                .frame(width: 75, height: 80, alignment: .top)
                            }
                Spacer()
                        }
            
                        .padding(.horizontal)
            

// Bouton Valider
            HStack(alignment: .center) {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .   foregroundStyle(.yellow)
                        .frame(width: 150, height: 50, alignment: .center)
                    Button(action: {
                        navControl.dismissFilters = false
                    }, label: {
                        Text("Valider")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(2)
                            .foregroundColor(.black)
                    })
                }
                Spacer()
            }
                
            }
    //        .Alignment(horizontal: .center)
                        .padding(.top, 30)
                        .padding(.horizontal)

               Spacer() // Pour garder les éléments en haut de la vue
              }
          }
     }

#Preview {
    FiltersView()
}

