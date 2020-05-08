//
//  MapKitsPokemon.swift
//  PokemonApp
//
//  Created by Memo Figueredo on 5/7/20.
//  Copyright © 2020 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import MapKit

// MARK:Map to search  pokemon and pass  information in PokemonDetail()

struct  MapViewPokemon: UIViewRepresentable {
  
    var coordinate: CLLocationCoordinate2D

   
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    
    // MARK: función que actualiza la vista

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapViewPokemon>) {
      
           let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
           let region = MKCoordinateRegion(center: coordinate, span: span)
           uiView.setRegion(region, animated: true)
    }
}





struct MapKits_Previews: PreviewProvider {
    static var previews: some View {
        MapViewPokemon(coordinate: pokemonData[0].locationCoordinate)
    }
}


