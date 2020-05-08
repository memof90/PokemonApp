//
//  Title.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:View title to  pass title information in PokemonDetail

struct Title: View {
    
    var titulo: Text
    var weight: Text
     var attack: Text
     var defense: Text
    
    var body: some View {
                VStack{
                        titulo
                        .font(.largeTitle)
                        .foregroundColor(.init(red:0.11, green:0.61, blue:0.99))
                        .bold()
                        HStack(alignment: .top) {
                            Text("weight:")
                                .font(.subheadline)
                                .bold()
                            weight
                        .font(.subheadline)
                       .foregroundColor(.init(red:0.17, green:0.23, blue:0.28))
                            Text("Attack:")
                            .font(.subheadline)
                                                           .bold()
                            attack
                        .font(.subheadline)
                            .foregroundColor(.init(red:0.17, green:0.23, blue:0.28))
                            Text("Defense:")
                            .font(.subheadline)
                                                           .bold()
                            defense
                            .font(.subheadline)
                            .foregroundColor(.init(red:0.17, green:0.23, blue:0.28))
                       }
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(titulo: Text("Pikachu"), weight: Text("34"),attack:( Text("34")), defense: Text("45"))
    }
}

}
