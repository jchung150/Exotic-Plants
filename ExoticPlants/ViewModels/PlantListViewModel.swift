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
    @Published var alertItem: AlertItem?
    
    func getPlants() {
        NetworkManager.shared.getPlants {
            [self] result in DispatchQueue.main.async {
                
                switch result {
                case .success(let plants):
                    self.plants = plants
                
                case .failure(let error):
                    switch error {
                    case .invalidDate:
                        alertItem = AlertContext.invalidData
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
