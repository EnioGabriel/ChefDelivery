//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 25/08/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
    @State private var productQuantity = 1
    
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 20)
                    
                    Text(product.name)
                        .bold()
                        .font(.title)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    Text(product.description)
                        .padding(.horizontal)
                    
                    Text(product.formattedPrice)
                        .font(.title3)
                        .bold()
                        .padding(.horizontal)
                }
            }
            
            Spacer()
            
            VStack(spacing: 16) {
                Text("Quantidade")
                    .font(.title3)
                    .bold()
                HStack {
                    Button {
                        if productQuantity > 1 {
                            productQuantity -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .bold()
                    }
                    
                    Text("\(productQuantity)")
                        .bold()
                        .font(.title2)
                    
                    Button {
                        productQuantity += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .bold()
                    }
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "cart")
                    
                    Text("Adicionar ao carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y:8)
            }
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
