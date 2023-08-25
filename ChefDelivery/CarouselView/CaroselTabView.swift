//
//  CarroselTabView.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 24/08/23.
//

import SwiftUI

struct CarouselTabView: View {
    @StateObject private var viewModel = CarouselViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.currentIndex) {
            ForEach(bannerMock.indices, id: \.self) { index in
                 CarouselItemView(order: bannerMock[index])
             }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear(){
            viewModel.startTimer()
        }
        .onDisappear(){
            viewModel.stopTimer()
        }
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
