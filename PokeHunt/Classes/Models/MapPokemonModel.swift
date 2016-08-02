//
//  MapPokemonModel.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 31/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import POGOProto
import CoreLocation


struct MapPokemonModel {
    struct CatchablePokemon {
        let spawnPointId : String
        let encounterId : UInt64
        let pokemonId : POGOPokemonId
        let expire : NSDate
        let location : CLLocationCoordinate2D

        init(proto : POGOMapPokemon) {
            spawnPointId = proto.spawnPointId
            encounterId = proto.encounterId
            pokemonId = proto.pokemonId
            location = CLLocationCoordinate2D(latitude: proto.latitude, longitude: proto.longitude)
            expire = NSDate(timeIntervalSince1970: NSTimeInterval(proto.expirationTimestampMs))
        }
    }
    struct WildPokemon {
        let spawnPointId : String
        let encounterId : UInt64
        let pokemonId : POGOPokemonId
        let location : CLLocationCoordinate2D
        let timeTillHidden : NSTimeInterval

        init(proto : POGOWildPokemon) {
            spawnPointId = proto.spawnPointId
            encounterId = proto.encounterId
            pokemonId = proto.pokemonData.pokemonId
            location = CLLocationCoordinate2D(latitude: proto.latitude, longitude: proto.longitude)
            timeTillHidden = NSTimeInterval(proto.timeTillHiddenMs)
        }
    }

    let catchablePokemons : [CatchablePokemon]
    let wildPokemons : [WildPokemon]

    init(proto : POGOGetMapObjectsResponse) {
        var catchable = [CatchablePokemon]()
        var wild = [WildPokemon]()

        for (_, cell) in proto.mapCellsArray.enumerate() {
            if let cellCatchable = cell.catchablePokemonsArray {
                for (_, c) in cellCatchable.enumerate() {
                    catchable.append(CatchablePokemon(proto: c as! POGOMapPokemon))
                }
            }
            if let cellWilds = cell.wildPokemonsArray {
                for (_, w) in cellWilds.enumerate() {
                    wild.append(WildPokemon(proto: w as! POGOWildPokemon))
                }
            }
        }

        self.catchablePokemons = catchable
        self.wildPokemons = wild
    }
}
