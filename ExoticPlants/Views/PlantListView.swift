//
//  PlantListView.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import SwiftUI

struct PlantListView: View {
    @StateObject private var viewModel = PlantListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
//                List(viewModel.plants, id: \.id) {
//                    plant in PlantDetailsView(plant: plant)
//                }
//                .navigationTitle("Plants")
                ForEach(viewModel.plants, id:\.id, content: {
                    
                }
            }
            .onAppear { }
            
            if viewModel.isLoading { LoadingView() }
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)}
    }
}

#Preview {
    PlantListView()
}
