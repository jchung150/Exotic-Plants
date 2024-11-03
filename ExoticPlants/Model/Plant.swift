//
//  Plant.swift
//  ExoticPlants
//
//  Created by Juan Chung on 2024-11-03.
//

import Foundation

struct Plant: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let countries: [String]
    let image: String
}

struct PlantResponse: Decodable {
    let request: [Plant]
}

struct MockData {
    static let samplePlants = PlantResponse(request: [
        Plant(
            id: 1,
            name: "Corpse Flower",
            description: "The Corpse Flower (Amorphophallus titanum) is famous for its enormous size and pungent odor, reminiscent of rotting flesh. It blooms rarely, sometimes with years between flowerings.",
            countries: ["Indonesia", "Sumatra"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 2,
            name: "Ghost Orchid",
            description: "The Ghost Orchid (Dendrophylax lindenii) is an extremely rare orchid known for its ethereal white flowers that appear to float in mid-air. It's one of the most difficult orchids to grow.",
            countries: ["Florida", "Cuba", "Bahamas"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 3,
            name: "Black Bat Flower",
            description: "The Black Bat Flower (Tacca chantrieri) features dramatic black flowers that resemble bat wings with long whisker-like bracteoles that can grow up to 28 inches long.",
            countries: ["Thailand", "Malaysia", "Southern China"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 4,
            name: "Venus Flytrap",
            description: "The Venus Flytrap (Dionaea muscipula) is a carnivorous plant that traps insects using modified leaf blades that snap shut when triggered by prey.",
            countries: ["United States (North Carolina)"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 5,
            name: "Rainbow Eucalyptus",
            description: "The Rainbow Eucalyptus (Eucalyptus deglupta) is known for its unique, multicolored bark that reveals bright green, blue, purple, orange, and maroon colors as it sheds.",
            countries: ["Philippines", "Indonesia", "Papua New Guinea"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 6,
            name: "Jade Vine",
            description: "The Jade Vine (Strongylodon macrobotrys) produces spectacular turquoise-blue flowers in cascading clusters that can grow up to 3 meters long.",
            countries: ["Philippines"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 7,
            name: "Chocolate Cosmos",
            description: "The Chocolate Cosmos (Cosmos atrosanguineus) is known for its dark brown flowers that smell like chocolate. It's extinct in the wild and only exists in cultivation.",
            countries: ["Mexico"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 8,
            name: "Dragon Blood Tree",
            description: "The Dragon Blood Tree (Dracaena cinnabari) has a unique umbrella-shaped canopy and produces deep red sap, which is why it's called 'dragon's blood'.",
            countries: ["Yemen (Socotra Island)"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 9,
            name: "Monkey Orchid",
            description: "The Monkey Orchid (Dracula simia) has flowers that resemble a monkey's face, complete with round eyes, fuzzy eyebrows, and a furry face.",
            countries: ["Ecuador", "Peru"],
            image: "" // Base64 image string would go here
        ),
        Plant(
            id: 10,
            name: "White Bird of Paradise",
            description: "The White Bird of Paradise (Strelitzia nicolai) is a dramatic plant with huge banana-like leaves and striking white flowers that resemble exotic birds in flight.",
            countries: ["South Africa"],
            image: "" // Base64 image string would go here
        )
    ])
    
    static func getPlants() -> PlantResponse {
        return samplePlants
    }
}
