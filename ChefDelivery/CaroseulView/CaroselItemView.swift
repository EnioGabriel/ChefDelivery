//
//  CarroselItemView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 24/08/23.
//

import SwiftUI

struct CaroselItemView: View {
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
//            .padding()
    }
}

struct CaroselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CaroselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
    }
}
