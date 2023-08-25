//
//  Stores.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 25/08/23.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
