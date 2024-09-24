//
//  DetailsMission.swift
//  HumaniGo
//
//  Created by Apprenant157 on 12/09/2024.
//

import SwiftUI

struct DetailsMissionView: View {
    
    @EnvironmentObject var missionsData: ShareMissionData
    @EnvironmentObject var uidProfil: UIDProfile
    @EnvironmentObject var navControl : NavigationControl
    
    @State private var shouldNavigate = false
    
    let dateFormatter = DateFormatter()
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.locale = Locale(identifier: "fr_FR")
        return formatter.string(from: missionsData.mission.date)
    }
  
    
    var body: some View
    {
        NavigationStack {
            let mission = missionsData.mission
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
                        Text(mission.missionDescription)
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
                            VStack() {
                                Image(systemName: "calendar")
                                Spacer()
                                Image(systemName: "mappin.and.ellipse")
                                Spacer()
                                Image(systemName: "person.3.fill")
                            }
                            .foregroundStyle(Color.mypink)
                            .frame(height: 150)
                            VStack(alignment: .leading) {
                                Text(formattedDate)
                                Spacer()
                                Text(mission.address)
                                Spacer()
                                Text("\(mission.members) places")
                            }
                            .frame(height: 150)
                        }
                        .padding()
                        .font(.title3)
                        
                        
                        VStack(alignment: .center) {
                            Text("Si tu est motivé-e à apporter ton aide, rejoins nous !")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            
                            Button(action: {
                                uidProfil.engaged = true
                                navControl.dismissModal = false
                                navControl.tabViewSelection = 3
                            }, label: {Text("M'engager")}).bold()
                                .padding()
                                .foregroundStyle(.white)
                                .background(Color.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            
                            if (uidProfil.connected && uidProfil.engaged) {
                                DelayedNavigationLink(delay: .seconds(1)) {
                                    ConfirmationEngagement()
                                }
                                
                            }
                            else if (uidProfil.engaged) {
                                DelayedNavigationLink(delay: .seconds(0)) {
                                    ConnexionView()
                                }
                            }

                        }
                        
                        
                    }
                    .padding(.top, 30)
                }
                
            }
        }
        .padding()
    }
}



#Preview {
    DetailsMissionView()
}
