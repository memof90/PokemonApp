//
//  ImagenPokemon.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:Image height and whith to pass data in DetailPokemon

struct ImagenPokemon: View {
    
     var image: Image
    
    var body: some View {
       image
        .resizable()
        .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
             
        }
    }


struct ImagenPokemon_Previews: PreviewProvider {
    static var previews: some View {
        ImagenPokemon(image: Image("pikachu"))
    }
}
