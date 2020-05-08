//
//  PokemonDetail.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/8/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:View to save information Detail to pokemon  

struct PokemonDetail: View {
    @EnvironmentObject var userData: UserData
    var pok: PokemonDate
    
    var pokemonIndex: Int {
        userData.pokemons.firstIndex(where: { $0.id == pok.id })!
    }
    var body: some View {
        ScrollView(.vertical) {
        VStack {
            Title(titulo: Text(pok.name), weight: Text(pok.weight), attack: Text(pok.attack), defense: Text(pok.defense))
            MapViewPokemon(coordinate: pok.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            ImagenPokemon(image: pok.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(pok.name)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.pokemons[self.pokemonIndex]
                            .isFavorite.toggle()
                    }) {
                        if self.userData.pokemons[self.pokemonIndex]
                            .isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                HStack(alignment: .top) {
                    Text(pok.park)
                        .font(.subheadline)
                    Spacer()
                    Text("Description")
                        .font(.subheadline)
                        .foregroundColor(.init(red:0.11, green:0.61, blue:0.99))
                      .bold()
                    
                }
                .padding()
                Text(pok.description)
                    .font(.body)
                
            }
            .padding()
            
            Spacer()
        }
    }
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return PokemonDetail(pok: userData.pokemons[0])
            .environmentObject(userData)
    }
}
