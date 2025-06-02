//
//  StatisticsModel.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 6/1/25.
//

import Foundation

struct Statistic: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
        
    }
    
}

