//
//  PokemonListFavorite.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/8/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:View to save all information and sellect to pokemon favorite 

struct PokemonListFavorite: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
    NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites")
                }
                
                ForEach(userData.pokemons) { pokemon in
                    if !self.userData.showFavoritesOnly || pokemon.isFavorite {
                        NavigationLink(
                            destination: PokemonDetail(pok: pokemon)
                                .environmentObject(self.userData)
                        ) {
                           PokemonRow(pok: pokemon)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Pokemon Favorite"))
        }
    }
}

struct PokemonListFavorite_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            PokemonListFavorite()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        
        .environmentObject(UserData())
    }
}
