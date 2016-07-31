//
//  Settings.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 31/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation


private let kSettingsKey = "com.fantastik.pokehunt.settings"
private let kStepsKey = "steps"
private let kRefreshIntervalKey = "refreshInterval"

class Settings : NSObject {
    static let instance = Settings()

    var steps : UInt8 = 15 {
        didSet {
            save()
        }
    }
    var refreshInterval : NSTimeInterval = 30 {
        didSet {
            save()
        }
    }

    private override init() {
        if let data = NSUserDefaults.standardUserDefaults().dataForKey(kSettingsKey) {
            let restore = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! Settings
            self.steps = restore.steps
            self.refreshInterval = restore.refreshInterval
        }
    }

    private func save() {
        NSUserDefaults.standardUserDefaults().setObject(self, forKey: kSettingsKey)
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    private func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInt(Int32(steps), forKey: kStepsKey)
        aCoder.encodeDouble(refreshInterval, forKey: kRefreshIntervalKey)
    }
    internal required init?(coder aDecoder: NSCoder) {
        self.steps = UInt8(aDecoder.decodeIntForKey(kStepsKey))
        self.refreshInterval = aDecoder.decodeDoubleForKey(kRefreshIntervalKey)
    }
}
