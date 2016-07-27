//
//  LogoView.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/21/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import UIKit

class LogoView: UIView{

    var logo: UIImageView!
    var pokehunt: UIImageView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    func setup(){
        self.setupLogo()
        self.setupPokehunt()
    }

    func setupLogo(){
        let logo = UIImageView(frame: CGRectMake(55, 0, 110, 110))
        logo.image = UIImage(named: R.image.startIcon.name)
        logo.contentMode = .ScaleAspectFit
        self .addSubview(logo)
        self.logo = logo
    }

    func setupPokehunt(){
        let pokehunt = UIImageView(frame: CGRectMake(0, 128, 220, 70))
        pokehunt.image = UIImage(named: R.image.launchscreenLogo.name)
        pokehunt.contentMode = .ScaleAspectFit
        self .addSubview(pokehunt)
        self.pokehunt = pokehunt
    }
}