//
//  CarroselItemView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 24/08/23.
//

import SwiftUI

struct CarouselItemView: View {
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
    }
}
