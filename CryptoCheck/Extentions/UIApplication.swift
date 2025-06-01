//
//  UIApplication.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 6/1/25.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
