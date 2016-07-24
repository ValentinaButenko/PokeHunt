//
//  Bootstrapper.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 23/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import GoogleMaps


internal struct Bootstrapper {
    internal static func bootstrap() {
        do {
            Bootstrapper.instance
        }
    }

    static let instance = Bootstrapper()
    private init() {
        do {
            GMSServices.provideAPIKey("AIzaSyBuZpNjqeaG65T53YfwDkBBow_fANZ05HA")
            NianticlabsService.makeShared({ (tokenDelegate) in
                LoginModule.sharedModule.getUpdatedToken({ (token) in
                    tokenDelegate(token)
                })
            })
        }

        let vc : UIViewController = (LoginModule.sharedModule.isAuthorized) ?
            UINavigationController(rootViewController: MapVC()) : LoginVC()
        if let del = UIApplication.sharedApplication().delegate {
            del.window!?.rootViewController = vc
        }
    }

    internal static func exchangeRoot(viewController controller : UIViewController) {
        let window = UIApplication.sharedApplication().delegate!.window!!
        let screenshot = window.rootViewController!.view.snapshotViewAfterScreenUpdates(false)
        window.rootViewController = controller

        controller.view.addSubview(screenshot)
        UIView.animateWithDuration(0.125, animations: {
            screenshot.alpha = 0
            }, completion: { _ in
                screenshot.removeFromSuperview()
        })
    }
}
