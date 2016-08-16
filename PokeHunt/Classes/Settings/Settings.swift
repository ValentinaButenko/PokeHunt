//
//  Settings.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 31/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import SwiftEventBus


private let kSettingsKey = "com.fantastik.pokehunt.settings"
private let kStepsKey = "steps"
private let kRefreshIntervalKey = "refreshInterval"
private let kIsPrivacyAcceptedKey = "isPrivacyAccepted"
private let kIsPayedKey = "isPayed"
private let kAutorefreshKey = "autorefresh"
private let kShowPokemonsKey = "showPokemons"
private let kShowPokestopKey = "showPokestop"
private let kShowJymKey = "showJym"
private let kStepsAreaKey = "stepsArea"

class Settings : NSObject, NSCoding {
    static let DidUpdated = "com.fantastik.pokehunt.Settings.DidUpdated"

    static let instance = Settings()

    var steps : UInt8 = 15 {
        didSet {
            save()
            notify()
        }
    }
    var refreshInterval : NSTimeInterval = 30 {
        didSet {
            save()
            notify()
        }
    }

    var isPrivacyAccepted: Bool = false {
        didSet {
            save()
            notify()
        }
    }

    var isPayed: Bool = false {
        didSet{
            save()
            notify()
        }
    }

    var aurorefresh: Bool = false {
        didSet{
            save()
            notify()
        }
    }

    var showPokemons: Bool = false {
        didSet{
            save()
            notify()
        }
    }

    var showPokestop: Bool = false {
        didSet{
            save()
            notify()
        }
    }

    var showJym: Bool = false {
        didSet{
            save()
            notify()
        }
    }

    var stepsArea: Int = 30 {
        didSet{
            save()
            notify()
        }
    }

    private override init() {
        if let data = NSUserDefaults.standardUserDefaults().dataForKey(kSettingsKey) {
            guard data.length != 0 else{
                return
            }
            let restore = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! Settings
            self.steps = restore.steps
            self.refreshInterval = restore.refreshInterval
            self.isPrivacyAccepted = restore.isPrivacyAccepted
            self.isPayed = restore.isPayed
            self.aurorefresh = restore.aurorefresh
            self.showPokemons = restore.showPokemons
            self.showPokestop = restore.showPokestop
            self.showJym = restore.showJym
            self.stepsArea = restore.stepsArea
        }
    }

    private func save() {
        let data = NSKeyedArchiver.archivedDataWithRootObject(self)
        NSUserDefaults.standardUserDefaults().setObject(data, forKey: kSettingsKey)
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    private func notify() {
        SwiftEventBus.post(Settings.DidUpdated)
    }

    internal func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInt(Int32(steps), forKey: kStepsKey)
        aCoder.encodeDouble(refreshInterval, forKey: kRefreshIntervalKey)
        aCoder.encodeBool(isPrivacyAccepted, forKey: kIsPrivacyAcceptedKey)
        aCoder.encodeBool(isPayed, forKey: kIsPayedKey)
        aCoder.encodeBool(aurorefresh, forKey: kAutorefreshKey)
        aCoder.encodeBool(showPokemons, forKey: kShowPokemonsKey)
        aCoder.encodeBool(showPokestop, forKey: kShowPokestopKey)
        aCoder.encodeBool(showJym, forKey: kShowJymKey)
        aCoder.encodeInt(Int32(stepsArea), forKey: kStepsAreaKey)
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        self.steps = UInt8(aDecoder.decodeIntForKey(kStepsKey))
        self.refreshInterval = aDecoder.decodeDoubleForKey(kRefreshIntervalKey)
        self.isPrivacyAccepted = aDecoder.decodeBoolForKey(kIsPrivacyAcceptedKey)
        self.isPayed = aDecoder.decodeBoolForKey(kIsPayedKey)
        self.aurorefresh = aDecoder.decodeBoolForKey(kAutorefreshKey)
        self.showPokemons = aDecoder.decodeBoolForKey(kShowPokemonsKey)
        self.showPokestop = aDecoder.decodeBoolForKey(kShowPokestopKey)
        self.showJym = aDecoder.decodeBoolForKey(kShowJymKey)
        self.stepsArea = Int(aDecoder.decodeIntForKey(kStepsAreaKey))
    }
}
