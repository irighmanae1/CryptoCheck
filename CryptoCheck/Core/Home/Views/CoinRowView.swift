//
//  CoinRowView.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 5/29/25.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: Coin
    
    var body: some View {
        
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            Spacer()
            VStack {
                Text("\(coin.currentPrice)")
                    .bold()
                    .foregroundStyle(Color.theme.accent)
                Text("\(coin.priceChangePercentage24H ?? 0)%")
                    .foregroundStyle(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red
                    )
            }
        }
    }
}

#Preview {
    CoinRowView(coin: DeveloperPreview.instance.coin)
}
