//
//  PlantDetailsView.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import SwiftUI

struct PlantDetailsView: View {
    var plant: Plant
    
    var body: some View {
        VStack {
            Text(plant.name)
                .font(.headline)
                .padding(.top)
            
            Text("Description:")
                .font(.headline)
                .padding(.top)
            Text(plant.description)
                .padding(.horizontal)
            
            Text("Countries:")
                .font(.headline)
                .padding(.top)
            ForEach(plant.countries, id: \.self) { country in Text(country)
                    .padding(.leading)
            }
            Spacer()
        }
        .padding()
        .navigationTitle(plant.name)
    }
}

#Preview {
    PlantDetailsView(plant: Plant(id: "1", name: "Aloe Vera", description: "A medicinal plant.", countries: ["Mexico", "Egypt", "China"], image: "leaf"))
}
