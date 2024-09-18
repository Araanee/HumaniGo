//
//  CardsView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 13/09/2024.
//

import SwiftUI

struct CardsView: View {
    
    @EnvironmentObject var navControl: NavigationControl
    @Binding var mission: Mission
    
    var body: some View {
        cards()
    }
    
    func cards() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.myyellow3)
                .frame(width: 250, height: 450)
                .offset(y: 40)
                .rotationEffect(.degrees(-3))
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
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
        }
    }
    
    func contentCard() -> some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 320, height: 375)
                .overlay(
                    Image("imageMission")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 320, height: 375)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                        .overlay(
                            ZStack {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .bottom, endPoint: .top)
                                    )
                                    .frame(width: 320, height: 100)
                                    .offset(y: 140)
                                VStack(alignment: .leading) {
                                    Text(mission.name).font(.title2)
                                        .bold()
                                        .foregroundStyle(.white)
                                    Text(mission.association)
                                        .foregroundStyle(.white)
                                }
                                .padding(.leading, -50)
                                .offset(y: 150)
                            }
                        )
                )
                .rotationEffect(.degrees(-2))
            Spacer()
            HStack {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.myblue)
                        .font(.system(size: 30))
                })
                .rotationEffect(.degrees(-2))
                Spacer()
                Button(action: {
                    navControl.dismissModal = true
                }, label: {
                    Image(systemName: "info.circle")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                })

                Spacer()
                Button(action: {
                    mission.addFavorite.toggle()
                }, label: {
                    Image(systemName: mission.addToFavorite())
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
    CardsView(mission: .constant(missionTest))
}
