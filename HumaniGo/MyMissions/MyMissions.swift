//
//  MyMissions.swift
//  HumaniGo
//
//  Created by Apprenant157 on 23/09/2024.
//

import SwiftUI

struct MyMissions: View {
    
    enum SelectedPage {
            case favorite
            case avenir
            case terminees
        }
    
    @State private var selectedPage: SelectedPage = .favorite
    
    var body: some View {
        VStack(spacing: 10){
            Text("Mes Missions")
                .font(.title)
                .bold()
            
            Spacer()
    
            HStack {
                Spacer()
                
                Button(action: {
                    selectedPage = .favorite
                }) {
                    Text("Favoris")
                        .padding()
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .background(selectedPage == .favorite ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Spacer()
                
                Button(action: {
                    selectedPage = .avenir
                }) {
                    Text("À Venir")
                        .padding()
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .background(selectedPage == .avenir ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Spacer()
                
                Button(action: {
                    selectedPage = .terminees
                }) {
                    Text("Terminées")
                        .padding()
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .background(selectedPage == .terminees ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Spacer()
            }
            
            // Display the selected view
            Spacer()
            
            switch selectedPage {
            case .favorite:
                FavoriteView()
            case .avenir:
                AvenirView()
            case .terminees:
                FinishedView()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MyMissions()
}
