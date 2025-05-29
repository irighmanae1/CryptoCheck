//
//  ContentView.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 5/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                
                Text("AccentColor")
                    .foregroundColor(.theme.accent)
                
                Text("SecondaryTextColor")
                    .foregroundColor(.theme.secondaryText)
                
                Text("GreenColor")
                    .foregroundColor(.theme.green)
                
                Text("RedColor")
                    .foregroundColor(.theme.red)
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
