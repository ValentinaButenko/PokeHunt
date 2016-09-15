//
//  PokemonsGenerator.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 8/19/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

extension MapPokemonModel{

    func GeneratePockemons(count: Int, location: CLLocationCoordinate2D){
        for i in 1...count{
            let pokeId = arc4random_uniform(151)
            let randomTime = NSTimeInterval(arc4random_uniform(UInt32.max))
            let date = NSDate(timeIntervalSince1970: randomTime)

            _ = MapPokemonModel(pokeId: Int(pokeId), location: location, expire: date)
        }
    }
}
