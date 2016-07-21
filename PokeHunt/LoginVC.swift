//
//  LoginVC.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/21/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import SnapKit

class LoginVC: UIViewController {

    var logoView: LogoView!
    var loginBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        
        view.backgroundColor = UIColor.whiteColor()
    }

    func setup(){
        self.setupLogoView()
      //  self.setupLoginBtn()
    }

    func setupLogoView(){
        let logoView = LogoView(frame: CGRectMake(0, 0, 220, 198))
        logoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoView)
        logoView.snp_makeConstraints { (make) in
            make.centerX.centerY.equalTo(view)
        }
        self.logoView = logoView
    }

    func setupLoginBtn(){
        let loginBtn = UIButton()
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.backgroundColor = UIColor.whiteColor()
        loginBtn.titleLabel?.text = "Log In"
        loginBtn.addTarget(self, action: #selector(LoginVC.tappedLoginBtn(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(loginBtn)

        loginBtn.snp_makeConstraints { (make) in
            make.centerX.centerY.equalTo(view)
            make.height.width.equalTo(50)
        }
        self.loginBtn = loginBtn
    }

    func tappedLoginBtn(sender: UIButton!){
        print("Log In pressed...")

        let vc = MapVC()
        let startVC = UINavigationController(rootViewController: vc)
        presentViewController(startVC, animated: true, completion: nil)
    }

}
