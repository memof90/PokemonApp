//
//  ContentDeatilPokemon.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:View to save information pokemon as city, state, and site 


struct ContentDeatilPokemon: View {
    
    var name: Text
    var nameTwo: Text
    var nameTree: Text
    
    var body: some View {
            VStack(alignment: .leading) {
                    
                    HStack {
                    name
                    .font(.title)
                    }
        
                HStack(alignment: .top) {
                    nameTwo
                    .font(.subheadline)
                    Spacer()
                    nameTree
                        .font(.subheadline)
                }
            }
    }
}

struct ContentDeatilPokemon_Previews: PreviewProvider {
    static var previews: some View {
        ContentDeatilPokemon(name: Text("Pikachu"), nameTwo: Text("oshua Tree ParkRock"), nameTree: Text("California"))
    }
}
