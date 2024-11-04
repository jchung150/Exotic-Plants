//
//  PlantListViewModel.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import Foundation

class PlantListViewModel: ObservableObject {
    
    @Published var plants: [Plant] = []
    @Published var isLoading = false
    @Published var showingNewPlantView = false
    
    func getPlants() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.plants = MockData.getPlants() // Use mock data
            self.isLoading = false
        }
    }
}
