//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 22/08/23.
//

import SwiftUI

struct OrderTypeGridView: View {
    let orders = ["Restaurantes", "Farmácia", "Descontos", "Gourmet", "Mercado", "Pet", "Bebidas"]
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
        ]) {
            ForEach(orders, id: \.self) { orderItem in
                Text(orderItem)
            }
        }
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
    }
}
