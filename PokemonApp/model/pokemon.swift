//
//  pokemon.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import CoreLocation

// MARK:Model PokemonList()

struct PokemonDate: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool
    var weight: String
    var attack: String
    var defense: String
    var description: String



    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        
            case poison = "poison"
            case fire = "fire"
            case water = "water"
            case bug = "bug"
            case flying = "flying"
            case normal = "normal"
            case electric = "electric"
        
    }
}

extension PokemonDate {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}



//case poison = "poison"
//case fire = "fire"
//case water = "water"
//case bug = "bug"
//case flying = "flying"
//case normal = "normal"
//case electric = "electric"
