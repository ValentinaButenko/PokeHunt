//
//  AppDelegate.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/20/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import FirebaseAnalytics
import HockeySDK
import iRate


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        FIRApp.configure()
        BITHockeyManager.sharedHockeyManager().configureWithIdentifier("b082d61d33344cf29e7e65ad44de4c3b")
        BITHockeyManager.sharedHockeyManager().debugLogEnabled = true
        BITHockeyManager.sharedHockeyManager().startManager()
        BITHockeyManager.sharedHockeyManager().authenticator.authenticateInstallation()
        BITHockeyManager.sharedHockeyManager().crashManager.crashManagerStatus = .AutoSend

        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        Bootstrapper.bootstrap()
        window!.makeKeyAndVisible()
        return true
    }

    override class func initialize() -> Void{
        iRate.sharedInstance().daysUntilPrompt = 3
        iRate.sharedInstance().usesUntilPrompt = 5
        iRate.sharedInstance().remindPeriod = 5

        iRate.sharedInstance().messageTitle = "Rate our App"
        iRate.sharedInstance().message = "If you enjoy using PokeHunt App, please take a moment to rate us on the App Store. Thanks for your support!"

        iRate.sharedInstance().promptForNewVersionIfUserRated = true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

