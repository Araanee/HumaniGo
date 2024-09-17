//
//  MonProfil.swift
//  Mes avis/Users/apprenant138/.Trash/Profil.swift
//
//  Created by Apprenant151 on 12/09/2024.
////
//
//import SwiftUI
//
//var prenom: String = "Emma"
//// comment on fait pour que ça prenne le texte tapé par l'utilisateur ?
//var hey: String = "Hey \(prenom)"
//var pouce = "👍"
//var etoile = "⭐️"
//var kdo = "🛍️"
//
//
//// Comment on fait pour que le nom rentré par l'asso apparaisse dans le code
//
//struct ProfileView: View {
//    
//    @State private var btn: Color = .yellow
//    
//    var body: some View {
//        
//        VStack {
//            ScrollView {
//                VStack(alignment: .leading) {
//                    
//                    Text("Mon profil")
//                        .font(.largeTitle)
//                        .fontWeight(.semibold)
//                        .frame(alignment: .topLeading)
//                        .padding([.top,], 10)
//                    
//                    Text("\(hey)")
//                        .font(.title2)
//                        .fontWeight(.semibold)
//                        .frame(alignment: .topLeading)
//                        .padding([.top, .bottom], 10)
//                    
//                    HStack(spacing: 25) {
//                        VStack {
//                            ZStack {
//                                Circle()
//                                    .frame(width: 80)
//                                    .foregroundColor(Color.myyellow)
//                                Text("8")
//                                    .font(.title2)
//                                    .fontWeight(.bold)
//                                    .foregroundStyle(.white)
//                                // Comment on fait pour relier à un compteur de missions validées
//                            }
//                            Text(pouce)
//                                .font(.system(size: 28))
//                                .fontWeight(.semibold)
//                                .padding(10)
//                            Text("Missions")
//                                .font(.title3)
//                                .fontWeight(.semibold)
//                        }
//                        VStack {
//                            ZStack {
//                                Circle()
//                                    .frame(width: 80)
//                                    .foregroundColor(Color.mypink)
//                                Text("4,5/5")
//                                    .font(.title2)
//                                    .fontWeight(.bold)
//                                    .foregroundStyle(.white)
//                                // Comment on fait pour relier à un compteur de notation d'avis donnés
//                            }
//                            Text(etoile)
//                                .font(.system(size: 28))
//                                .fontWeight(.semibold)
//                                .padding(10)
//                            Text("Avis")
//                                .font(.title3)
//                                .fontWeight(.semibold)
//                            
//                        }
//                        VStack {
//                            ZStack {
//                                Circle()
//                                    .frame(width: 80)
//                                    .foregroundColor(Color.myblue)
//                                Text("680")
//                                    .font(.title2)
//                                    .fontWeight(.bold)
//                                    .foregroundStyle(.white)
//                                // Comment on fait pour relier à un compteur de points gagnés
//                            }
//                            Text(kdo)
//                                .font(.system(size: 28))
//                                .fontWeight(.semibold)
//                                .padding(10)
//                            Text("Points")
//                                .font(.title3)
//                                .fontWeight(.semibold)
//                        }
//                    }
//                    Spacer(minLength: 60)
//                    
//                    HStack {
//                        Text(etoile)
//                            .font(.system(size: 32))
//                        Text("Tes évaluations")
//                            .font(.system(size: 24))
//                            .fontWeight(.semibold)
//                    }
//                    Spacer(minLength: 10)
//                    
//                    VStack {
//                        VStack {
//                            
//                            HStack(spacing: -1) {
//                                affCoeurs(count: 5)
//                                Spacer()
//                                Text("Les Restos du Coeur")
//                                    .frame(alignment: .trailing)
//                            }
//                            Spacer(minLength: -15)
//                            Text("________________________________________")
//                                .foregroundStyle(Color.mypink)
//                            
//                            Text("Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !")
//                            
//                            HStack(spacing: -1) {
//                                affCoeurs(count: 4)
//                                Spacer()
//                                Text("Soutien de France")
//                                    .frame(alignment: .trailing)
//                            }
//                            Spacer(minLength: -15)
//                            Text("________________________________________")
//                                .foregroundStyle(.pink)
//                            Text("Les élèves sont de plus en plus nombreux, la motivation d'Emma est un précieux atout.")
//                            
//                            HStack(spacing: -1) {
//                                affCoeurs(count: 5)
//                                Spacer()
//                                Text("Soutien de France")
//                                    .frame(alignment: .trailing)
//                            }
//                            Spacer(minLength: -15)
//                            Text("________________________________________")
//                                .foregroundStyle(.pink)
//                            Text("Emma s'est rapidement adaptée à nos besoins. Son sourire a mis du soleil à tous les bénéficiaires qu'elle a rencontré. Merci !")
//                        }
//                    }
//                  
//                    
//                    VStack {
//                        HStack(alignment: .center) {
//                            Text(kdo)
//                                .font(.system(size: 60))
//                                .fontWeight(.semibold)
//                                .padding(20)
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 15)
//                                    .foregroundStyle(Color.myyellow)
//                                    .frame(width: 150, height: 50, alignment: .center)
//                                Button(action: {
//                                    btn = Color.mypink
//                                    
//                                }, label: {
//                                    Text("Boutique")
//                                        .font(.title2)
//                                        .fontWeight(.bold)
//                                        .padding(2)
//                                        .foregroundColor(.black)
//                                })
//                            }
//                        }
//                        Text("Des informations à actualiser ?")
//                            .font(.system(size: 24))
//                            .fontWeight(.semibold)
//                            .padding(10)
//                    }
//                    
//                }
//                .padding()
//            }
//        }
//    }
//}
//
//#Preview {
//    ProfileView()
//}
//

