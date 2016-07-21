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

class MapVC: UIViewController {
    var mapView: GMSMapView!
    var searchBtn: UIButton!
    var payBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    func setup(){
        self.setupNavigationController()
        self.setupMap()
        self.setupSearchButton()
        self.setupPayButton()
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

        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)

        mapView.snp_makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        self.mapView = mapView
    }

    func setupSearchButton(){
        let searchBtn = UIButton()
        searchBtn.translatesAutoresizingMaskIntoConstraints = false
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
        payBtn.translatesAutoresizingMaskIntoConstraints = false

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
    }

    func selectedSettings(sender: UIButton){
        print("Settings...")
    }

    func shareSnapshot(){
        print("Now we will share snapshot")
    }

    func image(image: UIImage, didFinishSavingWithError error: NSError?, contextInfo:UnsafePointer<Void>){
        if error == nil{
            let ac = UIAlertController(title: "Gotcha!", message: "Your screenshot has been saved", preferredStyle: .Alert)

            let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            let shareAction = UIAlertAction(title: "Share", style: .Default, handler: {
                (action: UIAlertAction) in
                    self.shareSnapshot()
                })
        
            ac.addAction(okAction)
            ac.addAction(shareAction)

            self.presentViewController(ac, animated: true, completion: nil)
        }
        else{
            let ac = UIAlertController(title: "Oops!", message: "Let's try again \(error?.localizedDescription)", preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(ac, animated: true, completion: nil)
        }
    }
}

