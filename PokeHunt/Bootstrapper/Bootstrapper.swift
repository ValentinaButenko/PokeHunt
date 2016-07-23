//
//  Bootstrapper.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 23/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation


internal struct Bootstrapper {
    internal static func bootstrap() {
        do {
            Bootstrapper.instance
        }
    }

    static let instance = Bootstrapper()
    private init() {
        do {
            LoginModule.sharedModule
        }
    }
}
