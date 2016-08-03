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

    private override init() {
        if let data = NSUserDefaults.standardUserDefaults().dataForKey(kSettingsKey) {
            guard data.length != 0 else{
                return
            }
            let restore = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! Settings
            self.steps = restore.steps
            self.refreshInterval = restore.refreshInterval
            self.isPrivacyAccepted = restore.isPrivacyAccepted
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
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        self.steps = UInt8(aDecoder.decodeIntForKey(kStepsKey))
        self.refreshInterval = aDecoder.decodeDoubleForKey(kRefreshIntervalKey)
        self.isPrivacyAccepted = aDecoder.decodeBoolForKey(kIsPrivacyAcceptedKey)
    }
}
