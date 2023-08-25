//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 24/08/23.
//

import SwiftUI

struct StoresContainerView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Lojas")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(store: mock)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
    }
}
