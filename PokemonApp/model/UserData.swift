//
//  UserData.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import Combine

// MARK:pass data to View PokemonList()

final class UserData: ObservableObject  {
    
    @Published var showFavoritesOnly = false
    @Published var pokemons = pokemonData
}

