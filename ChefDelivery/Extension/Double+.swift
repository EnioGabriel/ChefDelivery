//
//  Double+.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 25/08/23.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattingString = String(format: "%.2f", self)
        return formattingString.replacingOccurrences(of: ".", with: ",")
    }
}
