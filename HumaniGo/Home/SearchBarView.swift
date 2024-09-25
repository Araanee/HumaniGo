//
//  utils.swift
//  HumaniGo
//
//  Created by Apprenant157 on 13/09/2024.
//

import SwiftUI

struct SearchBarView: View {
    
    // gets the text input in the search bar
    @State var searchText = ""
    @EnvironmentObject var navControl: NavigationControl
    
    var body: some View {
        searchBar()
    }
    
    func searchBar() -> some View {
        return HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color(.systemGray))
                    .padding(.leading, 10)
                
                TextField("Rechercher...", text: $searchText)
                    .padding(.vertical, 10)
                    .padding(.leading, 10)
                    .background(Color(.systemGray6))
            }
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal)
            
            // Filtres
            Button(action: {
                navControl.dismissFilters.toggle()
            }) {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color(.systemGray))
            }
        }
        .padding(.bottom)
        .padding(.trailing)
    }
}

#Preview {
    SearchBarView()
}
