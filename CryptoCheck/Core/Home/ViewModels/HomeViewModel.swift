//
//  HomeViewModel.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 5/30/25.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscriber()
    }
    
    func addSubscriber() {
        
        dataService.$allCoins
            .sink { (returnedCoins) in
                self.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
