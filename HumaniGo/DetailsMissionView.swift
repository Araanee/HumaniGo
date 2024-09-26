//
//  DetailsMission.swift
//  HumaniGo
//
//  Created by Apprenant157 on 12/09/2024.
//

import SwiftUI
import SwiftData

struct DetailsMissionView: View {
    
    @EnvironmentObject var missionsData: ShareMissionData
    @EnvironmentObject var uidProfile: UIDProfile
    @Query var profile: [Profile]
    
    let dateFormatter = DateFormatter()
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.locale = Locale(identifier: "fr_FR")
        return formatter.string(from: missionsData.mission.date)
    }
    
    var body: some View {
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
                            Button(action:{uidProfile.engaged = true}, label: {
                                ZStack{
                                    Text("M'engager").bold()
                                        .padding()
                                        .foregroundStyle(.white)
                                        .background(Color.mypink)
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                }})
                            
                            //                            NavigationLink("M'engager") {
                            //                                ConnexionView()
                            //                            }.onTapGesture {
                            //                                uidProfile.engaged = true
                            //                                print("hello nav")
                            //                            }
                                
                            if (uidProfile.engaged)
                            {
                                if (uidProfile.connected)
                                {
                                    
                                    
                                    DelayedNavigationLink(delay: .seconds(0)){
                                        
                                        ConfirmationEngagement()
                                    }.onAppear
                                    {
                                        let selectedProfile = profile[uidProfile.idx]
                                        selectedProfile.notification.insert(NotificationProfile(message: "Tu as bien été inscrit\(profile[uidProfile.idx].info.gender == Gender.female ? "e" : "") pour la mission\r \(mission.name)", type: TypeNotif.DefaultNotif),at: 0)
                                        profile[uidProfile.idx].notification.insert(NotificationProfile(message: "Alors ta mission ? Laisse un avis !", type: TypeNotif.AvisNotif), at: 0)
                                       
                                    }
                                }
                                else
                                {
                                    
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
}


//#Preview {
//    DetailsMissionView()
//}

