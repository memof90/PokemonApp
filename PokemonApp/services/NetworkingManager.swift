//
//  NetworkingManager.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

// MARK:Fetch data Api Pokemon Api to  View seacrhView



class NetworkingManager : ObservableObject {
    var willChange = PassthroughSubject<NetworkingManager, Never>()
    
  
    // MARK:save data Api Pokemon Api to  View seacrhView()
    @Published var pokemonList = PokemonAPIList(results: [])
    

    
    
    init() {
        
      

       // MARK:read  data Api Pokemon Api to  View seacrhView()
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=10") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(PokemonAPIList.self, from: data)
            
            DispatchQueue.main.async {
                self.pokemonList = pokemonList
            }
        }.resume()
    }
}

