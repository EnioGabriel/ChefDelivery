//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 22/08/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R.Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            
            Button(action:{}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
