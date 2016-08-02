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
import FirebaseAnalytics
import KLCPopup

class LoginVC: UIViewController {

    var logoView: LogoView!
    var loginBtn: UIButton!
    var warningLbl: UILabel!
  //  var privacyView: PrivacyPolicyView!
    var popup: KLCPopup!

    var isPrivacyAssepted: Bool!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()

        view.backgroundColor = UIColor.whiteColor()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        self.setupPrivacyView()
    }

    func setup(){
        self.setupLogoView()
        self.setupLoginBtn()
        self.setupWarningLbl()
    }

    func setupPrivacyView(){
        let privacyView = PrivacyPolicyView(frame: CGRect(x: 40, y: 70, width: self.view.frame.size.width - 80, height: self.view.frame.size.height - 140))
        let popup = KLCPopup(contentView: privacyView)
        popup.showType = .BounceInFromTop
        popup.dismissType = .BounceOutToBottom
        privacyView.comfirmBtn.addTarget(self, action: #selector(LoginVC.handlePrivacySelection), forControlEvents: .TouchUpInside)
        privacyView.declineBtn.addTarget(self, action: #selector(LoginVC.handlePrivacySelection), forControlEvents: .TouchUpInside)
        popup.shouldDismissOnBackgroundTouch = false
        popup.shouldDismissOnContentTouch = false
        popup.maskType = .Dimmed
        popup.show()

        self.popup = popup
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

    func setupWarningLbl(){
        let warningLbl = UILabel()
        warningLbl.text = "Please do not use your main PokeGo account for this app!"
        warningLbl.textAlignment = .Center
        warningLbl.textColor = UIColor(red: 136/255, green: 149/255, blue: 168/255, alpha: 1.0)
        warningLbl.font = UIFont(name: "OpenSans", size: 12)
        warningLbl.numberOfLines = 2
        warningLbl.alpha = 0.0

        view.addSubview(warningLbl)

        warningLbl.snp_makeConstraints { (make) in
            make.top.equalTo(loginBtn.snp_bottom).inset(-5)
            make.width.equalTo(220)
            make.centerX.equalTo(view.snp_centerX)
        }
        self.warningLbl = warningLbl
    }

    func handlePrivacySelection(sender:UIButton){
        switch sender.tag{
        case 1:
            print("decline")
            self.isPrivacyAssepted = false
            self.popup.dismiss(true)
            self.logoViewWillMove()
        case 2:
            print("confirm")
            self.isPrivacyAssepted = true
            self.popup.dismiss(true)
            self.logoViewWillMove()
        default:
            print("Think more")
        }
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
                                   completion: {_ in self.warningLblWillAppear()})
    }

    func warningLblWillAppear(){
        let animation = {
            self.warningLbl.alpha = 1.0
            self.view.layoutIfNeeded()
        }
        UIView.animateWithDuration(0.5,
                                   animations: animation,
                                   completion: nil)
    }

    func tappedLoginBtn(sender: UIButton!){
        FIRAnalytics.logEventWithName("User_log_in", parameters: nil)
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

