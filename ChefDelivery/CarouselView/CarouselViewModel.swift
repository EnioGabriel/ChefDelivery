//
//  CarouselViewModel.swift
//  ChefDelivery
//
//  Created by Enio  Gabriel Ferreira Silva on 25/08/23.
//

import SwiftUI

class CarouselViewModel: ObservableObject {
    @Published var currentIndex: Int = 0
    
    private var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            withAnimation {
                self.currentIndex = (self.currentIndex + 1) % bannerMock.count
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}
