//
//  StoreDetailViee.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 25/08/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: OrderType
    
    var body: some View {
        VStack {
            Text(store.name)
        }
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailView(store: storesMock[0])
    }
}
