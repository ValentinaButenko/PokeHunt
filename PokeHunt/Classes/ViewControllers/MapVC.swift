//
//  ViewController.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/20/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import SnapKit
import GoogleMaps
import Social
import FirebaseAnalytics
import GoogleMobileAds
import HockeySDK
import SwiftTask
import INTULocationManager
import DFNotificationView
import Photos
import SwiftEventBus

class MapVC: UIViewController {
    var mapView: GMSMapView!
    var searchBtn: UIButton!
    var payBtn: UIButton!
    var adsView: GADBannerView!
    var notificationView: CSNotificationView!
    var snapShot: UIImage!
    var userLocation: CLLocation!
    var ongoingCamera: GMSCameraPosition!
    var ongoingZoom = MapSettingsConstants.defaultZoom

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    override func viewWillAppear(animated: Bool) {
        self.updateZoom()
        self.checkLocationStatus()
    }

    func checkLocationStatus(){
        let notification = CSNotificationView(parentViewController: self, tintColor: UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0), image: nil, message: "Location services are unavailable. Tap to open Settings")
        notification.textLabel.textAlignment = .Center
        notification.textLabel.font = UIFont(name: "OpenSans", size: 15)
        notification.setVisible(false, animated: true, completion: nil)
        notification.tapHandler = {

            guard let mainSettings = NSURL(string: UIApplicationOpenSettingsURLString) else{
                return
            }
                UIApplication.sharedApplication().openURL(mainSettings)
        }

        INTULocationManager.sharedInstance().subscribeToLocationUpdatesWithBlock { (location, accuracy, status) in
                switch status{
                case .Success:
                    notification.setVisible(false, animated: true, completion: nil)
                case .ServicesDenied:
                    notification.setVisible(true, animated: true, completion: nil)
                    notification.textLabel.text = "Denied access to he location services. Tap to open Settings"
                    break
                case .ServicesDisabled:
                    notification.setVisible(true, animated: true, completion: nil)
                    notification.textLabel.text = "Disabled access to the location services. Tap to open Settings"
                    break
                case .ServicesRestricted:
                    notification.setVisible(true, animated: true, completion: nil)
                    notification.textLabel.text = "Resticted access to the location services. Tap to open Settings"
                    break
                default:
                    notification.setVisible(true, animated: true, completion: nil)
                    notification.textLabel.text = "Location services are unavailable. Tap to open Settings"
                    break
            }
        }
        self.notificationView = notification
    }

    func updateZoom(){
        SwiftEventBus.onMainThread(self, name: UserMapActions.StepsAreaChange.rawValue) { (notification) in
            switch Settings.instance.stepsArea{
            case 10 ... 35:
                self.mapView.animateToZoom(21)
                self.ongoingZoom = 21
                break
            case 36 ... 65:
                self.mapView.animateToZoom(20)
                self.ongoingZoom = 20
                break
            case 66 ... 135:
                self.mapView.animateToZoom(19)
                self.ongoingZoom = 19
                break
            case 136 ... 265:
                self.mapView.animateToZoom(18)
                self.ongoingZoom = 18
                break
            case 266 ... 525:
                self.mapView.animateToZoom(17)
                self.ongoingZoom = 17
                break
            case 526 ... 1050:
                self.mapView.animateToZoom(16)
                self.ongoingZoom = 16
                break
            case 1051 ... 2100:
                self.mapView.animateToZoom(15)
                self.ongoingZoom = 15
                break
            default:
                self.mapView.animateToZoom(MapSettingsConstants.defaultZoom)
                break
            }
            self.mapView.myLocationEnabled = true
        }
    }

    func setup(){
        self.setupNavigationController()
        self.setupScreenBasedOnPayment()

        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(10 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.request()
        }
    }

    func request() {
//        NianticlabsService.mainService.stopsTask().success { map in
//            print(map)
//        }.failure { (error, isCancelled) in
//            print(error)
//        }
    }

    func setupNavigationController(){
        guard let nc = self.navigationController else{
            return
        }

        let titleView = UIImageView(image: R.image.pokehunt()?.imageWithRenderingMode(.AlwaysOriginal))

        nc.navigationBar.barTintColor = UIColor(white: (255/255), alpha: 1.0)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: R.image.settings()?.imageWithRenderingMode(.AlwaysOriginal),
                                                                style: .Plain,
                                                                target: self,
                                                                action: #selector(MapVC.selectedSettings(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: R.image.share()?.imageWithRenderingMode(.AlwaysOriginal),
                                                                 style: .Plain,
                                                                 target: self,
                                                                 action: #selector(MapVC.shapshotBg(_:)))
        self.navigationItem.titleView = titleView
    }

    // setup map & searchBtn in purchased App

    func setupMap(){
        let camera = GMSCameraPosition.cameraWithLatitude(MapSettingsConstants.statringUserLatitude,
                                                          longitude: MapSettingsConstants.startingUserLongitude,
                                                          zoom: MapSettingsConstants.defaultZoom)

        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = false
        mapView.setMinZoom(14, maxZoom: 21)

        view.addSubview(mapView)

        mapView.snp_makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        self.mapView = mapView
        self.setupInitialUserLocation()
    }

    func setupSearchButton(){
        let searchBtn = UIButton()
        searchBtn.setBackgroundImage(R.image.pokeball()!.imageWithRenderingMode(.AlwaysOriginal),
                                     forState: UIControlState.Normal)
        searchBtn.addTarget(self, action: #selector(MapVC.searchPokemon(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        view.addSubview(searchBtn)

        searchBtn.snp_makeConstraints { (make) in
            make.trailing.equalTo(mapView.snp_trailing).inset(12)
            make.bottom.equalTo(mapView.snp_bottom).inset(18)
        }
        self.searchBtn = searchBtn
    }

    // setup map, payBtn, and adsView in unpurchased App

    func setupAdsView(){
        let adsView = GADBannerView()
        adsView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        adsView.rootViewController = self
        view.backgroundColor = UIColor.grayColor()
        view.addSubview(adsView)

        adsView.snp_makeConstraints { (make) in
            make.leading.trailing.equalTo(view)
            make.bottom.equalTo(view)
            make.height.equalTo(72)
        }
        adsView.loadRequest(GADRequest())
        self.adsView = adsView
    }

    func setupUnpurchasedMap(){

        let camera = GMSCameraPosition.cameraWithLatitude(MapSettingsConstants.statringUserLatitude,
                                                          longitude: MapSettingsConstants.startingUserLongitude,
                                                          zoom: MapSettingsConstants.defaultZoom)

        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = false
        mapView.setMinZoom(14, maxZoom: 21)

        view.addSubview(mapView)

        mapView.snp_makeConstraints { (make) in
            make.leading.trailing.equalTo(view)
            make.top.equalTo(view)
            make.bottom.equalTo(adsView.snp_top)
        }
        self.mapView = mapView
        self.setupInitialUserLocation()
    }

    func setupInitialUserLocation(){
        INTULocationManager.sharedInstance().requestLocationWithDesiredAccuracy(.Neighborhood, timeout: 0.0) { (location, accuracy, status) in
            if status == .Success{
                self.userLocation = location
                self.mapView.myLocationEnabled = true
                let userPosition = CLLocationCoordinate2DMake(self.userLocation.coordinate.latitude, self.userLocation.coordinate.longitude)
                self.mapView.animateWithCameraUpdate(GMSCameraUpdate.setTarget(userPosition))
            }
            else{
                self.userLocation = CLLocation(latitude: MapSettingsConstants.statringUserLatitude, longitude: MapSettingsConstants.startingUserLongitude)
            }
        }
    }

    func setupPayButton(){
        let payBtn = UIButton()

        payBtn.setBackgroundImage(R.image.pay()!.imageWithRenderingMode(.AlwaysOriginal),
                                  forState: UIControlState.Normal)
        payBtn.addTarget(self, action: #selector(MapVC.removeAds(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        view.addSubview(payBtn)

        payBtn.snp_makeConstraints { (make) in
            make.leading.equalTo(mapView.snp_leading).inset(12)
            make.bottom.equalTo(mapView.snp_bottom).inset(18)
        }
        self.payBtn = payBtn
    }

    func searchPokemon(sender: UIButton){
        FIRAnalytics.logEventWithName("User_tap_pokesearch", parameters: nil)
        print("Searching...")
    }

    func removeAds(sender: UIButton){
        FIRAnalytics.logEventWithName("User_tap_remove_ads", parameters: nil)
        // Add payment logic here!
        Settings.instance.isPayed = true
        print("I'll give U all my money honey!")
    }

    func shapshotBg(sender: UIButton){
        FIRAnalytics.logEventWithName("User_tap_share", parameters: nil)
        guard let snpShot = self.view?.pb_takeSnapshot() else{
            return
        }
        UIImageWriteToSavedPhotosAlbum(snpShot, self, #selector(MapVC.image(_:didFinishSavingWithError:contextInfo:)), nil)
        self.snapShot = snpShot
    }

    func selectedSettings(sender: UIButton){
        FIRAnalytics.logEventWithName("User_select_settings", parameters: nil)
        let storyboard = UIStoryboard(name: "Settings", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("SettingsStrBrd")

        self.notificationView.setVisible(false, animated: true, completion: nil)
        self.navigationController!.pushViewController(vc, animated: true)
    }

    func image(image: UIImage, didFinishSavingWithError error: NSError?, contextInfo:UnsafePointer<Void>){

        if error == nil{
            let vc = UIActivityViewController(activityItems: [self.snapShot], applicationActivities: [])
            self.presentViewController(vc, animated: true, completion: nil)
        }
        else{
            PHPhotoLibrary.requestAuthorization() { (status) -> Void in
                switch status {
                case .Restricted:
                    let ac = UIAlertController(title: "Restricted", message: "PokeHunt was restricted to access your photos", preferredStyle: .Alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    self.presentViewController(ac, animated: true, completion: nil)
                    break
                case .Denied, .NotDetermined:
                    let ac = UIAlertController(title: "Denied", message: "PokeHunt has no permission to access your photos. Please, manage the access policy in Settings", preferredStyle: .Alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    ac.addAction(UIAlertAction(title: "Settings",
                        style: .Default,
                        handler: {_ in
                            UIApplication.sharedApplication().openURL(NSURL(string: UIApplicationOpenSettingsURLString)!)}))
                    self.presentViewController(ac, animated: true, completion: nil)
                    break
                default:
                    let ac = UIAlertController(title: "Error", message: "Please, check the access policy in Settings", preferredStyle: .Alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    break
                }
            }
        }
        }

    func setupScreenBasedOnPayment(){
        if Settings.instance.isPayed == true {
            self.setupMap()
            self.setupSearchButton()
        }
        else{
            self.setupAdsView()
            self.setupUnpurchasedMap()
            self.setupSearchButton()
            self.setupPayButton()
        }
    }
}

