//
//  NianticlabsService.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 24/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import Alamofire


final class NianticlabsService {
    private static var instance : NianticlabsService? = nil

    class func makeShared(tokenGetter: () -> String?) {
        if  instance != nil {
            fatalError("You could not instantiate another instance of the class")
        }
        instance = NianticlabsService(tokenGetter: tokenGetter)
    }

    private let tokenGetter : () -> String?
    private init(tokenGetter: () -> String?) {
        self.tokenGetter = tokenGetter
    }

    
}
