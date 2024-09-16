//
//  challenge.swift
//  HumaniGo
//
//  Created by Apprenant157 on 13/09/2024.
//

import SwiftUI

struct challenge: View {
    @State private var angle: Double = 10
    @State private var isAnimated : Bool = false
    var body: some View {
        Button(action: {
            isAnimated.toggle()
        }, label: {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.black)
                .frame(width: 200, height: 200)
                .overlay (
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 50)
                        .offset(x: isAnimated ? 0 : -120, y: isAnimated ? 0 : -120)
                        .animation(.interpolatingSpring(stiffness: 180, damping: 12).repeatForever(autoreverses: true), value: isAnimated)

                )
        })
    }
}


#Preview {
    challenge()
}
