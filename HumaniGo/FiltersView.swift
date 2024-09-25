//
//  Filtres.swift
//
//  Created by Apprenant151 on 19/09/2024.
//

import SwiftUI

var days = ["L", "Ma", "Me", "J", "V", "S", "D"]
var periods = ["Matin", "Après-midi", "Soir"]
var causes = ["Animale", "Soutien scolaire ou linguistique", "Alimentaire", "Écologie"]
var causeIcons = ["pawprint.fill", "book.fill", "fork.knife.fill", "leaf.fill"]

struct Cause: Identifiable {
    var id = UUID()
    var name: String
    var img: String
    var selected: Bool = false
    var color = Color.black
}

struct FiltersView: View {
    
    @EnvironmentObject var navControl: NavigationControl
    @State var searchText: String = ""
    @State var distance: Double = 5 // Valeur initiale du slider entre 1 et 30
    @State private var selectedDay: String = "" // Pour le jour sélectionné
    @State private var selectedPeriod: String = "" // Pour la période sélectionnée
    @State private var selectedCause: String = "" // Pour la cause sélectionnée
    @State private var selectedCauseIcon : String = ""
    
    @State private var causes = [
        Cause(name: "Animale", img: "pawprint.fill"),
        Cause(name: "Soutien scolaire ou linguistique", img: "book.fill"),
        Cause(name: "Alimentaire", img: "fork.knife"),
        Cause(name: "Écologie", img: "leaf.fill"),
        ]
    
   
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
                        .foregroundStyle(Color(.systemGray))
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
                    .foregroundStyle(Color(.systemGray))
                    .padding(.leading, 20)
                
                // Ronds des jours de la semaine
                HStack {
                    ForEach(days, id: \.self) { day in
                        ZStack {
                            Circle()
                                .fill(selectedDay == day ? .pink : .white)
                                .stroke(selectedDay == day ? Color.pink : Color.black, lineWidth: 1)
                                .frame(width: 40, height: 40)
                                .padding(3)
                            
                            Text(day)
                                .fontWeight(selectedDay == day ? .bold : .regular)
                                .foregroundColor(selectedDay == day ? .white : .black)
                                .onTapGesture {
                                    selectedDay = day
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
                // Matin, Après-midi, Soir
                
                HStack(alignment: .center) {
                    Spacer()
                    ForEach(periods, id: \.self) { period in
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(selectedPeriod == period ? .pink : .white)
                                .stroke(selectedPeriod == period ? .pink : .black, lineWidth: 1)
                                .frame(width: 110, height: 40)
                            
                            Text(period)
                                .fontWeight(selectedPeriod == period ? .bold : .regular)
                                .foregroundColor(selectedPeriod == period ? .white : .black)
                                .frame(width: 90, height: 30)
                            
                                .onTapGesture {
                                    selectedPeriod = period
                                }
                        }
                        .padding(5)
                        
                    }
                    Spacer()
                }
                //        .padding(.horizontal)
                
                // Cause
                Text("Cause")
                    .font(.title2).bold()
                    .foregroundStyle(Color(.systemGray))
                    .padding(.leading, 20)
                
                HStack {
                    Spacer()
                    
                    ForEach(causes) { cause in
                        VStack {
                            ZStack {
                                Circle()
                                    .fill(selectedCause == cause.name ? .pink : .white)
                                    .stroke(selectedCause == cause.name ? .pink : .black, lineWidth: 1)
                                    .frame(width: 50, height: 50)
                                    .overlay {
                                Image(systemName: cause.img)
                                    .foregroundColor(selectedCause == cause.name ? .white : .black)
                                        }
                                }
                            Text(cause.name)
                                .font(.caption)
                                .foregroundColor(.black)
                                .frame(width: 75, height: 80, alignment: .top)
                                .multilineTextAlignment(.center)
                        }
                        .onTapGesture {
                            selectedCause = cause.name
                        }
                    }
                    .padding(.bottom, 5)
                    
                    Spacer()
                }
                
                
// Bouton Valider
                HStack(alignment: .center) {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
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
            .padding(20)
            Spacer() // Pour garder les éléments en haut de la vue
            
        }
        .padding(.top, 30)
        
        
    //    .padding(.horizontal)
    }
}

#Preview {
    FiltersView()
}

