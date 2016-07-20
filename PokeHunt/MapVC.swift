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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
//        let rightBtn = UIButton(frame: CGRectMake(0, 0, 19, 24))
//        let leftBtn = UIButton(frame: CGRectMake(0, 0, 24, 24))
//        let titleView = UIImageView(frame: CGRectMake(0, 0, 100, 30))

//        rightBtn.setImage(UIImage(named: R.image.share.name), forState: UIControlState.Normal)
//        rightBtn.addTarget(self, action: #selector(MapVC.selectedShare(_:)), forControlEvents: UIControlEvents.TouchUpInside)

//        leftBtn.setImage(UIImage(named: R.image.settings.name), forState: UIControlState.Normal)
//        leftBtn.addTarget(self, action: #selector(MapVC.selectedSettings(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        let titleView = UIImageView(image: R.image.pokehunt()?.imageWithRenderingMode(.AlwaysOriginal))

        nc.navigationBar.barTintColor = UIColor(white: (255/255), alpha: 1.0)
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: R.image.share()?.imageWithRenderingMode(.AlwaysOriginal),
                                                                 style: .Plain,
                                                                 target: nil,
                                                                 action: nil)
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
//            make.width.height.equalTo(72)
        }
        self.searchBtn = searchBtn
    }

    func setupPayButton(){
        let payBtn = UIButton()
        payBtn.translatesAutoresizingMaskIntoConstraints = false
        payBtn.setBackgroundImage(UIImage(named: R.image.pay.name), forState: UIControlState.Normal)
        payBtn.addTarget(self, action: #selector(MapVC.removeAds(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        view.addSubview(payBtn)

        payBtn.snp_makeConstraints { (make) in
            make.leading.equalTo(view).inset(12)
            make.bottom.equalTo(view).inset(18)
            make.width.height.equalTo(72)
        }
        self.payBtn = payBtn
    }

    func searchPokemon(sender: UIButton){
        print("Searching...")
    }

    func removeAds(sender: UIButton){
        print("I'll give U all my money honey!")
    }

    func selectedShare(sender: UIButton){
        print("Share...")
    }

    func selectedSettings(sender: UIButton){
        print("Settings...")
    }
}

