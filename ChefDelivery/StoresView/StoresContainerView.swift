//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 24/08/23.
//

import SwiftUI

enum FilterType {
    case stars
    case distance
    case none
}

struct StoresContainerView: View {
    
    @State private var ratingFilter = 0
    @State private var distanceFilter = [0, 5]
    @State private var selectedFilter: FilterType = .none
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            switch selectedFilter {
                case .stars:
                    return store.stars >= ratingFilter
                case .distance:
                    let isInRange = distanceFilter[0] <= store.distance && store.distance <= distanceFilter[1]
                    return isInRange
                default:
                    return true
            }
        }
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text("Lojas")
                    .font(.headline)
                
                Spacer()
                
                Menu("Estrelas") {
                    Button {
                        selectedFilter = .none
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                            selectedFilter = .stars
                        } label: {
                            rating > 1 ?
                            Text("\(rating) estrelas ou mais")
                            :
                            Text("\(rating) estrela ou mais")
                        }
                    }
                }
                .foregroundColor(.black)
                
                Menu("Distância") {
                    Button {
                        selectedFilter = .none
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(Array(stride(from: 0, through: 20, by: 5)), id: \.self) { distance in
                        Button {
                            distanceFilter = [distance, distance+5]
                            selectedFilter = .distance
                        } label: {
                            Text("De \(distance) até \(distance+5)")
                        }
                    }
                }
                .foregroundColor(.black)
            }

            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else{
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
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
