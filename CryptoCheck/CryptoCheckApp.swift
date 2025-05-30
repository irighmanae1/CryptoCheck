//
//  CryptoCheckApp.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 5/29/25.
//

import SwiftUI

@main
struct CryptoCheckApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
