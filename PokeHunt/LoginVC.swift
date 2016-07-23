//
//  LoginVC.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/21/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import SnapKit
import AppAuth

class LoginVC: UIViewController {

    var logoView: LogoView!
    var loginBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()

        view.backgroundColor = UIColor.whiteColor()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        self.logoViewWillMove()
    }

    func setup(){
        self.setupLogoView()
        self.setupLoginBtn()
    }

    func setupLogoView(){
        let logoView = LogoView()
        view.addSubview(logoView)
        logoView.snp_makeConstraints { (make) in
            make.centerY.equalTo(view.snp_centerY)
            make.centerX.equalTo(view.snp_centerX)
            make.height.equalTo(198)
            make.width.equalTo(220)
        }
        self.logoView = logoView
    }

    func setupLoginBtn(){
        let loginBtn = UIButton()
        loginBtn.setImage(UIImage(named: R.image.gmail.name), forState: .Normal)
        loginBtn.imageView?.contentMode = .ScaleAspectFit
        loginBtn.alpha = 0.0
        loginBtn.addTarget(self, action: #selector(LoginVC.tappedLoginBtn(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(loginBtn)

        loginBtn.snp_makeConstraints { (make) in
            make.top.equalTo(logoView.snp_bottom).inset(70)
            make.centerX.equalTo(view.snp_centerX)
            make.width.equalTo(220)
            make.height.equalTo(70)
        }
        self.loginBtn = loginBtn
    }

    func logoViewWillMove(){
        UIView.animateWithDuration(0.5, delay: 0.5,
                                   options: UIViewAnimationOptions.CurveEaseIn,
                                   animations: {
                                    var logoViewFrame = self.logoView.frame
                                    logoViewFrame.origin.y -= 80
                                    self.logoView.frame = logoViewFrame
                                    },
                                   completion: { _ in
                                    self.loginBtnWillAppear()
                                    })
    }

    func loginBtnWillAppear(){
        UIView.animateWithDuration(0.8,
                                   animations: {
                                    self.loginBtn.alpha = 1.0 },
                                   completion: nil)
    }

    func tappedLoginBtn(sender: UIButton!){
        print("Log In pressed...")

        LoginModule.sharedModule.performLoginOnController(self) { res in
            print("return \(res)")
            switch (res) {
            case .LoggedIn:
                let vc = MapVC()
                Bootstrapper.exchangeRoot(viewController: UINavigationController(rootViewController: vc))
            case .Failed:
                print("failed")
            }
        }
    }
}

