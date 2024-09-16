//
//  SegmentedControlView.swift
//  HumaniGo
//
//  Created by Apprenant157 on 13/09/2024.
//

import SwiftUI

struct SegmentedControlView: View {
    
    private var pink : Color = Color(red: 255/255, green: 0, blue: 110/255)
    
    // handles the choice for the display of the missions
    @State private var selectedOption = 0
    let options = ["Match", "Catalogue"]
    
    var body: some View {
        segControl()
    }
    
    func segControl() -> some View {
        ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .foregroundStyle(Color(.systemGray5))
                    .frame(width: 250, height: 40)
                
                HStack {
                    ForEach(0..<2) { index in
                        Button(action: {
                            selectedOption = index
                        }) {
                            Text(options[index])
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(selectedOption == index ? pink : Color.clear)
                                .foregroundColor(selectedOption == index ? Color.white : Color.black)
                        }
                    }
                }
                .frame(width: 250, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            }
        .padding(.bottom)
    }
}

#Preview {
    SegmentedControlView()
}
