//
//  SearchBar.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI


// MARK:View to save data api pokemonApi nd search pokemon in a lists 

struct searchBars: View {
    
    @State private var searchText: String = ""
    
    @ObservedObject var networking = NetworkingManager()
    
    var body: some View {
        
        List {
            
              SearchBar(text: $searchText, placeholder: "Search")
            ForEach(networking.pokemonList.results.filter({searchText.isEmpty ? true : $0.name.contains(searchText)}), id: \.url) { pokemon in
                Text(pokemon.name)
            }
            
               
        }.navigationBarTitle(Text("Pokemon"), displayMode: .inline)
    }
}

struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        searchBars()
    }
}
// MARK:Search-Bar Configuration

struct SearchBar: UIViewRepresentable {

    @Binding var text: String
    var placeholder: String

    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = placeholder
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

