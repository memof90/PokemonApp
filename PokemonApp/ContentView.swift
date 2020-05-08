//
//  ContentView.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

// MARK:View to Final app PokemonApp and pass data to PokemonApi 

struct ContentView: View {
    
//    init(){
//        UITabBar.appearance().backgroundColor = UIColor.blue
//    }
    
    // MARK:Change TabItem
    @State var selected = 0
 

    var body: some View {
        
        TabView(selection: $selected) {
         // MARK:View PokemonListFavorite
        PokemonListFavorite().tabItem({
                Image(systemName: "house.fill")
                        Text("Pokemon Favorite")
                
        .font(Font.system(size: 30
                               , weight: .light))
                }).tag(0)
    // MARK:View SeacrhBar with Api Pokemon Api
            
           searchBars().tabItem({
                Image(systemName: "magnifyingglass")
                               Text("Search Pokemon")
                
                              .font(Font.system(size: 30
                               , weight: .light))
                }).tag(1)
        }.accentColor(Color.blue)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
         .environmentObject(UserData())
    }
}




