//
//  RefreshScrollModel.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 23/09/2024.
//
//
//import SwiftUI
//
//class RefreshScroll: ObservableObject {
//    @Published var loading: Bool = false {
//        didSet {
//            if oldValue == false && loading == true {
//                // Do async stuff here
//                ...
//
//                // When finished loading (must be done on the main thread)
//                self.loading = false
//            }
//        }
//    }
//}
//#Preview {
//    RefreshScrollModel()
//}
