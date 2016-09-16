//
//  Bootstrapper.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 23/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import GoogleMaps
import FirebaseAnalytics
import HockeySDK
import iRate


internal let GlobalDomain = "com.fantastik.pokehunt"
internal let GlobalErrorDomain = "com.fantastik.pokehunt.error"


internal struct Bootstrapper {
    internal static func bootstrap() {
        do {
            Bootstrapper.instance
        }
    }

    static let instance = Bootstrapper()
    private init() {
        do {
            if let path = NSBundle.mainBundle().pathForResource("GMService-APIkeys", ofType: "plist"){
                if let dict = NSDictionary(contentsOfFile: path) as? Dictionary<String,AnyObject>{
                    if let APIkeys = dict["GMService_API_keys"]{
                    let randomIndex = Int(arc4random_uniform(UInt32(APIkeys.count)))
                        let randomAPI = APIkeys[randomIndex] as! String
                        GMSServices.provideAPIKey(randomAPI)
                        LoginModule.sharedModule
                    }
                }
            }
//            NianticlabsService.makeShared({ (tokenDelegate) in
//                LoginModule.sharedModule.getUpdatedToken({ (token) in
//                    tokenDelegate(token)
//                })
//            })
        }

        self.setupHockeyApp()
        self.setupFirebaseAnalytics()
        self.setupIRate()

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

    func setupHockeyApp(){
        BITHockeyManager.sharedHockeyManager().configureWithIdentifier("HockeyApp_API_key_goes_here")
        BITHockeyManager.sharedHockeyManager().debugLogEnabled = true
        BITHockeyManager.sharedHockeyManager().startManager()
        BITHockeyManager.sharedHockeyManager().authenticator.authenticateInstallation()
        BITHockeyManager.sharedHockeyManager().crashManager.crashManagerStatus = .AutoSend
    }

    func setupFirebaseAnalytics(){
        FIRApp.configure()
    }

    func setupIRate(){
        iRate.sharedInstance().daysUntilPrompt = 3
        iRate.sharedInstance().usesUntilPrompt = 5
        iRate.sharedInstance().remindPeriod = 5

        iRate.sharedInstance().messageTitle = "Rate our App"
        iRate.sharedInstance().message = "If you enjoy using PokeHunt App, please take a moment to rate us on the App Store. Thanks for your support!"

        iRate.sharedInstance().promptForNewVersionIfUserRated = true
    }
}

