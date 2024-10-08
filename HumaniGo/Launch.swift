//
//  Accueil.swift


//  Created by Apprenant121 on 19/09/2024.

import SwiftUI

struct Launch: View {
    
    @Binding var test: Bool
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Image("fd_launch")
                
                VStack(spacing: 40) {
                    Image("logo")
                        .frame(width: 50, height: 30)
                        .padding(.bottom, 40)
                    Text("HumaniGo")
                        .font(.system(size: 45))
                        .foregroundStyle(.white)
                        .bold()
                    
                    Button(action: {}, label: {
                        
                        Text("Association")
                            .font(.title)
                            .padding()
                        
                            .foregroundStyle(Color.black)
                            .frame(width: 300, height: 80)
                        
                            .background(Color(.systemGray6))
                            .clipShape( RoundedRectangle(cornerRadius: 30))
                        
                    })

                    Button(action: {
                        test.toggle()
                    }, label: {
                        Text("Bénévole")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                            .frame(width: 300, height: 80,alignment: .center)
                            .background (Color(.systemGray6))
                            .clipShape( RoundedRectangle(cornerRadius: 30))
                    })
                }
            }
        }
    }
}

#Preview {
    Launch(test: .constant(false))
}
