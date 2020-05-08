//
//  pokemonApiList.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import Foundation

// MARK:call Api Pokemon Api to SearchBar View

struct PokemonAPIList : Decodable {
    var results: [PokemonListEntry]
    
}

struct PokemonListEntry: Decodable {
    var name: String
    var url: String
    
    
}
