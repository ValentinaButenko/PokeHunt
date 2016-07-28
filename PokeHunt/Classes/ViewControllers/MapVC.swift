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

class MapVC: UIViewController {
    var mapView: GMSMapView!
    var searchBtn: UIButton!
    var payBtn: UIButton!

    var snapShot: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    func setup(){
        self.setupNavigationController()
        self.setupMap()
        self.setupSearchButton()
        self.setupPayButton()
        NianticlabsService.mainService.getLocalSession { _ in
            NianticlabsService.mainService.getAllStops({ (mapObj, err) in
                
            })
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
            make.trailing.equalTo(view).inset(12)
            make.bottom.equalTo(view).inset(18)
        }
        self.searchBtn = searchBtn
    }

    func setupPayButton(){
        let payBtn = UIButton()

        payBtn.setBackgroundImage(R.image.pay()!.imageWithRenderingMode(.AlwaysOriginal),
                                  forState: UIControlState.Normal)
        payBtn.addTarget(self, action: #selector(MapVC.removeAds(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        view.addSubview(payBtn)

        payBtn.snp_makeConstraints { (make) in
            make.leading.equalTo(view).inset(12)
            make.bottom.equalTo(view).inset(18)
        }
        self.payBtn = payBtn
    }

    func searchPokemon(sender: UIButton){
        print("Searching...")
    }

    func removeAds(sender: UIButton){
        print("I'll give U all my money honey!")
    }

    func shapshotBg(sender: UIButton){
        guard let snpShot = self.view?.pb_takeSnapshot() else{
            return
        }
        UIImageWriteToSavedPhotosAlbum(snpShot, self, #selector(MapVC.image(_:didFinishSavingWithError:contextInfo:)), nil)
        self.snapShot = snpShot
    }

    func selectedSettings(sender: UIButton){
        print("Settings...")
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

