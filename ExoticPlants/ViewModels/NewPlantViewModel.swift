//
//  NewPlantViewModel.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import Foundation

class NewPlantViewModel: ObservableObject {
    @Published var name = ""
    @Published var description = ""
    @Published var countries: [String] = []
    @Published var image: String = ""
    @Published var errMsg = ""
    @Published var selectedCountries: [String] = []
    
    
    func addPlant() {
        guard canSave else { return }
        
        let newId = UUID().uuidString
        let newPlant = Plant(id: newId, name: name, description: description, countries: countries, image: image)
        
        // API Request - POST Method
    }
    
    var canSave: Bool {
        errMsg = ""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty else {
            errMsg = "Please fill in the name field."
            return false
        }
        
        guard !description.trimmingCharacters(in: .whitespaces).isEmpty else {
            errMsg = "Please fill in the description field."
            return false
        }
        
        guard !countries.isEmpty else {
            errMsg = "Please select at least one country."
            return false
        }
        
        if image.isEmpty {
            errMsg = "Please upload an image."
            return false
        }
        
        return true
    }
}
