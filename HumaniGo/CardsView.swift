//
//  CardsView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 13/09/2024.
//

import SwiftUI

extension Color {
    static var mypink : Color = Color(red: 255/255, green: 0, blue: 110/255)
    static var myblue : Color = Color(red: 51/255, green: 129/255, blue: 255/255)
    static var myyellow : Color = Color(red: 255/255, green: 195/255, blue: 31/255)
    static var myyellow2 : Color = Color(red: 255/255, green: 227/255, blue: 150/255)
    static var myyellow3 : Color = Color(red: 255/255, green: 239/255, blue: 197/255)
}

struct CardsView: View {
    
    @Binding var showDetails: Bool
    
    // handles the fav icon
    @State var isClicked : Bool = false
    @State var iconHeart : String = "heart"
    
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
                    showDetails.toggle()
                }, label: {
                    Image(systemName: "info.circle")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                })
                
                Spacer()
                Button(action: {
                    isClicked = !isClicked
                    iconHeart = isClicked ? "heart.fill" : "heart"
                }, label: {
                    Image(systemName: iconHeart)
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

/*
#Preview {
    CardsView(showDetails: startValue)
}*/
