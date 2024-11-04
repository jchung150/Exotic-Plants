//
//  NewPlantView.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import SwiftUI

struct NewPlantView: View {
    @StateObject var viewModel = NewPlantViewModel()
    
    var body: some View {
        VStack {
            Text("New Plant")
                .font(.largeTitle)
                .bold()
                .padding(.top, 100)
            Form {
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Description", text: $viewModel.description)
                    .textFieldStyle(DefaultTextFieldStyle())
                CountryPickerView(selectedCountries: $viewModel.selectedCountries)
            }
        }
    }
}

#Preview {
    NewPlantView()
}
