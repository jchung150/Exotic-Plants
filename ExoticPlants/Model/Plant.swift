//
//  Plant.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import Foundation

struct Plant: Identifiable, Decodable {
    let id: String
    let name: String
    let description: String
    let countries: [String]
    let image: String
}

struct PlantResponse: Decodable {
    let request: [Plant]
}

struct MockData {
    static let samplePlants = [
        Plant(
            id: "1",
            name: "Corpse Flower",
            description: "The Corpse Flower (Amorphophallus titanum) is famous for its enormous size and pungent odor, reminiscent of rotting flesh. It blooms rarely, sometimes with years between flowerings.",
            countries: ["Indonesia", "Sumatra"],
            image: ""
        ),
        Plant(
            id: "2",
            name: "Ghost Orchid",
            description: "The Ghost Orchid (Dendrophylax lindenii) is an extremely rare orchid known for its ethereal white flowers that appear to float in mid-air. It's one of the most difficult orchids to grow.",
            countries: ["Florida", "Cuba", "Bahamas"],
            image: ""
        ),
        Plant(
            id: "3",
            name: "Black Bat Flower",
            description: "The Black Bat Flower (Tacca chantrieri) features dramatic black flowers that resemble bat wings with long whisker-like bracteoles that can grow up to 28 inches long.",
            countries: ["Thailand", "Malaysia", "Southern China"],
            image: ""
        ),
        Plant(
            id: "4",
            name: "Venus Flytrap",
            description: "The Venus Flytrap (Dionaea muscipula) is a carnivorous plant that traps insects using modified leaf blades that snap shut when triggered by prey.",
            countries: ["United States (North Carolina)"],
            image: ""
        ),
        Plant(
            id: "5",
            name: "Rainbow Eucalyptus",
            description: "The Rainbow Eucalyptus (Eucalyptus deglupta) is known for its unique, multicolored bark that reveals bright green, blue, purple, orange, and maroon colors as it sheds.",
            countries: ["Philippines", "Indonesia", "Papua New Guinea"],
            image: ""
        )
    ]
    
    static func getPlants() -> [Plant] {
        return samplePlants
    }
}

