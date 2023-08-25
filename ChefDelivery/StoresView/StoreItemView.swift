//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 24/08/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text(order.name)
                .font(.subheadline)
            
            Spacer()
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(order: OrderType(id: 1, name: "Monstro Burguer", image: "monstro-burger-logo"))
    }
}
