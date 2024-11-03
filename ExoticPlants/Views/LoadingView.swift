//
//  LoadingView.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint:.gray))
                .scaleEffect(2)
        }
    }
}

#Preview {
    LoadingView()
}
