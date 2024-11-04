//
//  CountryPickerViewModel.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import Foundation
import SwiftUI

class CountryPickerViewModel: ObservableObject {
    let countries = ["United States", "Canada", "United Kingdom", "France", "Germany", "Japan", "India"]
    
    @Published var selectedCountries: [String] = []
    
    // Filtered list of available countries (excludes already selected ones)
    var availableCountries: [String] {
        countries.filter { !selectedCountries.contains($0) }
    }
    
    // Add a country if selection is under the limit
    func addCountry(_ country: String) {
        guard selectedCountries.count < 3 else { return }
        if !selectedCountries.contains(country) {
            selectedCountries.append(country)
        }
    }
    
    // Remove a selected country
    func removeCountry(_ country: String) {
        selectedCountries.removeAll { $0 == country }
    }

}
