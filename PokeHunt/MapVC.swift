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
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.requestAlwaysAuthorization()
        self.setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setup(){
        self.setupMap()
        self.setupSearchButton()
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
        searchBtn.backgroundColor = UIColor.greenColor()
        searchBtn.addTarget(self, action: #selector(MapVC.searchPokemon(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        view.addSubview(searchBtn)

        searchBtn.snp_makeConstraints { (make) in
            make.trailing.bottom.equalTo(view).inset(20)
            make.width.height.equalTo(40)
        }
        self.searchBtn = searchBtn
    }

    func searchPokemon(sender: UIButton!){
        print("Searching...")
    }
}

