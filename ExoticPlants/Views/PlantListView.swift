//
//  PlantListView.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import SwiftUI

struct PlantListView: View {
    
    @StateObject private var viewModel = PlantListViewModel()
    @State private var isShowingNewPlantView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                List(viewModel.plants, id: \.id) { plant in
                    NavigationLink(destination: PlantDetailsView(plant: plant)) {
                        PlantRow(plant: plant)
                            .swipeActions {
                                Button("Delete") {
                                    // Placeholder action
                                    print("Delete button tapped for \(plant.name)")
                                }.tint(.red)
                            }
                    }
                }
                .navigationTitle("Exotic Plants")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isShowingNewPlantView = true // Trigger sheet
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                }
                
                if viewModel.isLoading {
                    LoadingView()
                }
            }
        }
        .onAppear {
            viewModel.getPlants()
        }
        .sheet(isPresented: $isShowingNewPlantView) {
            NewPlantView()
        }
    }
}

struct PlantRow: View {
    var plant: Plant
    
    var body: some View {
        HStack {
            Text(plant.name).frame(width: 150, alignment: .leading)
        }
        .font(.system(size: 12, weight: .light, design: .default))
    }
}

#Preview {
    PlantListView()
}
