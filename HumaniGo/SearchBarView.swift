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
    
    var body: some View {
        searchBar()
    }
    
    func searchBar() -> some View {
        return HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color(.systemGray))
            
            TextField("Rechercher...", text: $searchText)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            // Filtres
            Button(action: {
                // Action filtres
            }) {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color(.systemGray))
            }
        }
        .padding()
    }
}

#Preview {
    SearchBarView()
}
