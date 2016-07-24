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
            make.center.equalTo(view)
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
            make.top.equalTo(logoView.snp_bottom).inset(40)
            make.centerX.equalTo(view.snp_centerX)
            make.width.equalTo(220)
            make.height.equalTo(70)
        }
        self.loginBtn = loginBtn
    }

    func logoViewWillMove(){
        self.logoView.snp_updateConstraints(closure: { (make) in
            make.centerY.equalTo(self.view).offset(-80)
        })

        let animation = {
            self.view.layoutIfNeeded()
        }

        UIView.animateWithDuration(0.45,
                                   delay: 0.5,
                                   options: UIViewAnimationOptions.CurveEaseIn,
                                   animations: animation,
                                   completion: { _ in self.loginBtnWillAppear() })
    }

    func loginBtnWillAppear(){
        self.loginBtn.snp_updateConstraints(closure: { (make) in
            make.top.equalTo(self.logoView.snp_bottom).inset(-10)
        })

        let animation = {
            self.loginBtn.alpha = 1.0
            self.view.layoutIfNeeded()
        }
        UIView.animateWithDuration(0.45,
                                   animations: animation,
                                   completion: nil)
    }

    func tappedLoginBtn(sender: UIButton!){
        LoginModule.sharedModule.performLoginOnController(self) { res in
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

