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

class MapVC: UIViewController {
    var mapView: GMSMapView!
    var searchBtn: UIButton!
    var payBtn: UIButton!
    var adsView: GADBannerView!

    var isPayed = false

    var snapShot: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    func setup(){
        self.setupNavigationController()

        if isPayed == true {
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
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86,longitude: 151.20, zoom: 10)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)

        view.addSubview(mapView)

        mapView.snp_makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        self.mapView = mapView
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
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.20, zoom: 10)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)

        view.addSubview(mapView)

        mapView.snp_makeConstraints { (make) in
            make.leading.trailing.equalTo(view)
            make.top.equalTo(view)
            make.bottom.equalTo(adsView.snp_top)
        }
        self.mapView = mapView
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
        self.navigationController!.pushViewController(vc, animated: true)
    }

    func image(image: UIImage, didFinishSavingWithError error: NSError?, contextInfo:UnsafePointer<Void>){
        if error == nil{
            let vc = UIActivityViewController(activityItems: [snapShot], applicationActivities: [])
            self.presentViewController(vc, animated: true, completion: nil)
        }
        else{
            let ac = UIAlertController(title: "Oops!", message: error?.localizedDescription, preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(ac, animated: true, completion: nil)
        }
    }
}

