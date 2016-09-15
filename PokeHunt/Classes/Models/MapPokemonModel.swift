//
//  MapPokemonModel.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 31/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
// import POGOProto
import CoreLocation


struct MapPokemonModel {
//    struct CatchablePokemon {
//        let spawnPointId : String
//        let encounterId : UInt64
//        let pokemonId : POGOPokemonId
//        let expire : NSDate
//        let location : CLLocationCoordinate2D
//
//        init(proto : POGOMapPokemon) {
//            spawnPointId = proto.spawnPointId
//            encounterId = proto.encounterId
//            pokemonId = proto.pokemonId
//            location = CLLocationCoordinate2D(latitude: proto.latitude, longitude: proto.longitude)
//            expire = NSDate(timeIntervalSince1970: NSTimeInterval(proto.expirationTimestampMs))
//        }
//    }

    struct CatchablePokemon{
        let pokemonId: Int
        let expire: NSDate
        let location: CLLocationCoordinate2D

        init(pokeId: Int, location: CLLocationCoordinate2D, expire: NSDate){
            self.pokemonId = pokeId
            self.location = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            self.expire = expire
        }
    }

//    struct WildPokemon {
//        let spawnPointId : String
//        let encounterId : UInt64
//        let pokemonId : POGOPokemonId
//        let location : CLLocationCoordinate2D
//        let timeTillHidden : NSTimeInterval
//
//        init(proto : POGOWildPokemon) {
//            spawnPointId = proto.spawnPointId
//            encounterId = proto.encounterId
//            pokemonId = proto.pokemonData.pokemonId
//            location = CLLocationCoordinate2D(latitude: proto.latitude, longitude: proto.longitude)
//            timeTillHidden = NSTimeInterval(proto.timeTillHiddenMs)
//        }
//    }

    struct WildPokemon{
        let pokemonId: Int
        let expire: NSDate
        let location: CLLocationCoordinate2D

        init(pokeId: Int, location: CLLocationCoordinate2D, expire: NSDate){
            self.pokemonId = pokeId
            self.location = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            self.expire = expire
        }
    }

    let catchablePokemons : [CatchablePokemon]
    let wildPokemons : [WildPokemon]

    init(pokeId: Int, location: CLLocationCoordinate2D, expire: NSDate){
        var catchable = [CatchablePokemon]()
        var wild = [WildPokemon]()

        let rand = Int(arc4random_uniform(2))
            if rand == 1{
                catchable.append(CatchablePokemon(pokeId: pokeId, location: location, expire: expire))
            }
            else{
                wild.append(WildPokemon(pokeId: pokeId, location: location, expire: expire))
        }
        self.catchablePokemons = catchable
        self.wildPokemons = wild
    }

//    init(proto : POGOGetMapObjectsResponse) {
//        var catchable = [CatchablePokemon]()
//        var wild = [WildPokemon]()
//
//        for (_, cell) in proto.mapCellsArray.enumerate() {
//            if let cellCatchable = cell.catchablePokemonsArray {
//                for (_, c) in cellCatchable.enumerate() {
//                    catchable.append(CatchablePokemon(proto: c as! POGOMapPokemon))
//                }
//            }
//            if let cellWilds = cell.wildPokemonsArray {
//                for (_, w) in cellWilds.enumerate() {
//                    wild.append(WildPokemon(proto: w as! POGOWildPokemon))
//                }
//            }
//        }
//
//        self.catchablePokemons = catchable
//        self.wildPokemons = wild
//    }
}
