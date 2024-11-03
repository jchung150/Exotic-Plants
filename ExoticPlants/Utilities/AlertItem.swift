//
//  AlertItem.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
    var dismissButton: Alert.Button?
}

enum AlertContent {
    
    //MARK: - Network Errors
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There is an error trying to reach the server. If the problem persists, please contact the developer."), dismissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time. Please check your internet connection."), dismissButton: .default(Text("Ok")))
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server. Please try again or contact the developer."), dismissButton: .default(Text("Ok")))
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please try again or contact the developer"), dismissButton: .default(Text("Ok")))
}
