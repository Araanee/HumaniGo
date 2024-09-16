//
//  DetailsMission.swift
//  HumaniGo
//
//  Created by Apprenant157 on 12/09/2024.
//

import SwiftUI

private var pink : Color = Color(red: 255/255, green: 0, blue: 110/255)
private var blue : Color = Color(red: 51/255, green: 129/255, blue: 255/255)
private var yellow : Color = Color(red: 255/255, green: 195/255, blue: 31/255)

struct DetailsMissionView: View {
    
    var mission : String = "Ramassage de déchets"
    var asso : String = "Ecolo Asso"
    var description : String = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean convallis diam a vehicula egestas. Maecenas tristique, justo vel hendrerit euismod, justo ex hendrerit diam, sit amet placerat leo enim quis lorem.
"""
    var time : Int = 2
    var date : String = "20 septembre 2024"
    var address :  String = "4 rue Saint Martin, Paris 75015"
    var members : Int = 2
    
    var body: some View {
        NavigationStack {
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(pink)
                .frame(height: 5)
            VStack {
                ScrollView {
                    
                    VStack(alignment: .leading) {
                        Text(mission)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text(asso)
                            .font(.title3)
                            .foregroundStyle(Color(.gray))
                        
                        Rectangle()
                            .frame(height: 1, alignment: .center)
                            .foregroundStyle(Color(.systemGray4))
                        
                        Text("Description")
                            .foregroundStyle(Color(.systemGray))
                            .padding(.top)
                        Text(description)
                        HStack {
                            Text("\(time) h")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(height: 80)
                                .frame(minWidth: 140)
                                .background(blue)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                .padding()
                            Text("💰 50")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(height: 80)
                                .frame(minWidth: 140)
                                .background(yellow)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                .padding()
                        }
                        
                        HStack {
                            VStack(spacing: 40) {
                                Image(systemName: "calendar")
                                Image(systemName: "mappin.and.ellipse")
                                Image(systemName: "person.3.fill")
                            }
                            .foregroundStyle(pink)
                            VStack(alignment: .leading, spacing: 40) {
                                Text(date)
                                Text(address)
                                Text("\(members) places")
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
                            .background(pink)
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
    DetailsMissionView()
}
