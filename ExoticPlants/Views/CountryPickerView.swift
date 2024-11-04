//
//  CountryPickerView.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import SwiftUI

struct CountryPickerView: View {
    @Binding var selectedCountries: [String]
    private let countries = ["United States", "Canada", "United Kingdom", "France", "Germany", "Japan", "India"]
    
    var body: some View {
        VStack {
            Text("Select Countries:")
                .font(.headline)
            
            // Display selected countries with remove option
            ForEach(selectedCountries, id: \.self) { country in
                HStack {
                    Text(country)
                    Spacer()
                    Button(action: {
                        removeCountry(country)
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.red)
                    }
                }
                .padding(.vertical, 4)
            }
            
            // Show dropdown if fewer than 3 countries are selected
            if selectedCountries.count < 3 {
                Picker("Add Country", selection: Binding(
                    get: { "" }, // Dummy binding for selection
                    set: { newCountry in addCountry(newCountry) }
                )) {
                    ForEach(countries.filter { !selectedCountries.contains($0) }, id: \.self) { country in
                        Text(country).tag(country)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
            } else {
                Text("You can only select up to 3 countries.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
    }
    
    private func addCountry(_ country: String) {
        if selectedCountries.count < 3, !selectedCountries.contains(country) {
            selectedCountries.append(country)
        }
    }
    
    private func removeCountry(_ country: String) {
        selectedCountries.removeAll { $0 == country }
    }
}
