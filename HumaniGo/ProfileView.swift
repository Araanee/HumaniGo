//
//  MonProfil.swift
//  Mes avis
//
//  Created by Apprenant151 on 12/09/2024.
//

import SwiftUI
import SwiftData

var pouce = "👍"
var etoile = "⭐️"
var kdo = "🛍️"


struct ProfileView: View {
    
    
    @Environment(\.modelContext) var modelContext
    
    @Query  var shared: [Profile]
    @State  private var btn: Color = .yellow
    @State  var tel = ""
    @State  var email = ""
    @State  var mdp = ""
    @State  var cmdp = ""
    @StateObject var loginVM = utilsPswd()
    
    
//    private func loadProfils() {
//         let fetchRequest = FetchDescriptor<Profil>()
//         do {
//             profils = try modelContext.fetch(fetchRequest)
//         } catch {
//             print("Erreur lors du chargement des profils : \(error)")
//         }
//     }
    
    var body: some View {
        
        
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Mon profil")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(alignment: .leading).padding()
                    
                    Text("Hey \(shared.last!.info.firstname)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(alignment: .topLeading).padding()
                    
                    HStack{
                        
                        rond(text:"Missions", icon:pouce, nb:Double(shared.last!.nbmissions), Color.myyellow)
                        Spacer()

                        rond(text:"Avis", icon:etoile, nb:shared.last!.nbfeedbacks, Color.mypink)
                        Spacer()
                        
                        rond(text:"Points", icon:kdo, nb:Double(shared.last!.points), Color.myblue)
                        
                        
                    }.padding(20)
                    
                    
                    HStack(alignment: .center) {
                        Spacer()
                        NavigationLink("Récompenses 🛍️")
                        {
                            Text("boutique here")
                        }
                        .foregroundColor(.black).padding(20)
                        .font(.headline)
                        .frame(width: 180, height: 50)
                        .background(Color.myyellow)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                        
                    }.padding(.bottom, 30)
                    HStack {
                        Rectangle().frame(height: 1).foregroundColor(Color(.systemGray4))
                    }
                    
                    displayfeedback(shared.first?.feedbacks)
                    
                    VStack {
                        
                        Text("Des informations à actualiser ?")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(10)
                        
                        VStack ()
                        {
                            loginVM.champs(name: "Email", def:shared.last!.info.email , value: $email)
                                .frame(height: 70)
                            loginVM.champs(name: "Téléphone", def:shared.last!.info.phone , value: $tel)
                                .frame(height: 70)
                            
                            loginVM.champs(name: "Mot de passe", def:"*****",value: $mdp)
                                .frame(height: 70)
                            
                            loginVM.champs(name: "Confirmer le mot de passe", def:"*****",value: $cmdp)
                                .frame(height: 70)
                            
                        }.frame(maxWidth: 300)
                        NavigationLink("Modifier")
                        {
                            Text("modif here")
                        }
                        .foregroundColor(.black).padding(20)
                        .font(.headline)
                        .frame(width: 180, height: 50)
                        .background(Color.myyellow)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                    }
                    
                }
                
            }
        }.padding()
    }
}

#Preview {
    ProfileView()
}

