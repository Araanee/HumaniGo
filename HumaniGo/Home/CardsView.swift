//
//  CardsView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 13/09/2024.
//

import SwiftUI
import SwiftData

struct CardsView: View {
    
    @Query var profiles: [Profile]
    
    @EnvironmentObject var uidProfil: UIDProfile
    @EnvironmentObject var navControl: NavigationControl
    @EnvironmentObject var missionsData: ShareMissionData
    @State var indexMission: Int = 0
    
    var body: some View {
        cards()
    }
    
    func cards() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.myyellow3)
                .frame(width: 250, height: 450)
                .offset(y: 40)
                .rotationEffect(.degrees(-3))
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.myyellow2)
                .frame(width: 300, height: 450)
                .offset(y: 20)
                .rotationEffect(.degrees(-2))
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.myyellow)
                    .frame(width: 350, height: 450)
                    .rotationEffect(.degrees(-2))
                    .overlay(
                        contentCard()
                    )
        }.navigationBarBackButtonHidden(true)
    }
    
    func contentCard() -> some View {
        VStack {
            let missions = missionsData.missions
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 320, height: 375)
                .overlay(
                    Image(missions[indexMission].imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 320, height: 375)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                        .overlay(
                            VStack {
                                Spacer()
                                ZStack(alignment: .leading) {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .fill(
                                            LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .bottom, endPoint: .top)
                                        )
                                        .frame(width: 320, height: 100)
                                    VStack(alignment: .leading) {
                                        Text(missions[indexMission].name).font(.title2)
                                            .bold()
                                            .foregroundStyle(.white)
                                        Text(missions[indexMission].association)
                                            .foregroundStyle(.white)
                                    }
                                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                }
                            }
                        )
                )
                .rotationEffect(.degrees(-2))
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    indexMission = (indexMission + 1) % missions.count
                    missionsData.mission = missions[indexMission]
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.myblue)
                        .font(.system(size: 30))
                })
                .rotationEffect(.degrees(-2))
                Spacer()
                Button(action: {
                    navControl.dismissModal = true
                }, label: {
                    VStack
                    {
                        Image(systemName: "info.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        Text("Détails").foregroundColor(.white).bold()
                    }
                })

                Spacer()
                Button(action: {
                    missions[indexMission].addFavorite.toggle()
                    
                    if (missions[indexMission].addFavorite)
                    {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            indexMission = (indexMission + 1) % missions.count
                        }
                    }
                }, label: {
                    Image(systemName: missions[indexMission].addToFavorite())
                        .foregroundStyle(Color.mypink)
                        .font(.system(size: 30))
                })
                
                Spacer()
            }
            .rotationEffect(.degrees(-2))
            Spacer()
            
        }
    }
}


#Preview {
    CardsView()
}
