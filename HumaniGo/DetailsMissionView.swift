//
//  DetailsMission.swift
//  HumaniGo
//
//  Created by Apprenant157 on 12/09/2024.
//

import SwiftUI

struct DetailsMissionView: View {
    
    
    @Binding var mission: Mission
//    @EnvironmentObject var navControl: NavigationControl
    
    var body: some View {
        NavigationStack {
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.mypink)
                .frame(height: 5)
            VStack {
                ScrollView {
                    
                    VStack(alignment: .leading) {
                        Text(mission.name)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text(mission.association)
                            .font(.title3)
                            .foregroundStyle(Color(.gray))
                        
                        Rectangle()
                            .frame(height: 1, alignment: .center)
                            .foregroundStyle(Color(.systemGray4))
                        
                        Text("Description")
                            .foregroundStyle(Color(.systemGray))
                            .padding(.top)
                        Text(mission.description)
                        HStack {
                            Text("\(mission.time) h")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(height: 80)
                                .frame(minWidth: 140)
                                .background(Color.myblue)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                .padding()
                            Text("💰 \(mission.reward)")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(height: 80)
                                .frame(minWidth: 140)
                                .background(Color.myyellow)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                .padding()
                        }
                        
                        HStack {
                            VStack(spacing: 40) {
                                Image(systemName: "calendar")
                                Image(systemName: "mappin.and.ellipse")
                                Image(systemName: "person.3.fill")
                            }
                            .foregroundStyle(Color.mypink)
                            VStack(alignment: .leading, spacing: 40) {
                                Text(mission.date)
                                Text(mission.address)
                                Text("\(mission.members) places")
                            }
                        }
                        .padding()
                        .font(.title3)
                        
                        
                        VStack(alignment: .center) {
                            Text("Si tu est motivé-e à apporter ton aide, rejoins nous !")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            
                            NavigationLink("M'engager") {
                                ConnexionView()
                            }
                            .bold()
                            .padding()
                            .foregroundStyle(.white)
                            .background(Color.mypink)
                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        }
                        .padding(.top, 30)
                    }
                    
                }
            }
            .padding()
        }
    }
}


#Preview {
    DetailsMissionView(mission: .constant(missionTest))
}
