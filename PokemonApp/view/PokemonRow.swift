//
//  PokemonRow.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:View to save information pokemonRow as image, name and select favoritePokemon

struct PokemonRow: View {
    
    var pok: PokemonDate
    
    
    var body: some View {
          HStack {
                    pok.image
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(pok.name)
                    Spacer()

                    if pok.isFavorite {
                        Image(systemName: "star.fill")
                            .imageScale(.medium)
                            .foregroundColor(.yellow)
                    }
                }
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
       Group {
            PokemonRow(pok: pokemonData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            PokemonRow(pok: pokemonData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
