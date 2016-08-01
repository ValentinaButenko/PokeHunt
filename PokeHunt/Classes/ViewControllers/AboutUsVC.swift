//
//  AboutUsVC.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/27/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import SnapKit
import MessageUI
import FirebaseAnalytics

class AboutUsVC: UIViewController, UITextViewDelegate{

    var header: UIView!
    var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        self.setup()
    }
    
    override func viewDidAppear(animated: Bool) {
        FIRAnalytics.logEventWithName("About_us_page_load", parameters: nil)
    }

    func setup(){
        self.setupHeader()
        self.setupTextView()
        self.showTextToView()

        textView.delegate = self
    }

    func setupHeader(){
        guard let navController = self.navigationController else {
            return
        }
        let top = navController.navigationBar.frame.maxY

        let header = UIView()
        header.backgroundColor = UIColor(red: (243/255), green: (243/255), blue: (243/255), alpha: 1.0)

        view.addSubview(header)

        header.snp_makeConstraints { (make) in
            make.top.equalTo(top)
            make.leading.trailing.equalTo(view)
            make.height.equalTo(36)
        }
        self.header = header
        self.setupHeaderSubviews()
    }

    func setupHeaderSubviews(){
        let headerText = UILabel()
        let bottomBorder = UIView()

        headerText.text = "About Us"
        headerText.font = UIFont(name: "OpenSans", size: 15)
        headerText.textColor = UIColor(red: (124/255), green: (124/255), blue: (124/255), alpha: 1.0)

        bottomBorder.backgroundColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 0.8)

        header.addSubview(headerText)
        header.addSubview(bottomBorder)

        headerText.snp_makeConstraints { (make) in
            make.top.equalTo(header).inset(8)
            make.leading.equalTo(header).inset(15)
        }

        bottomBorder.snp_makeConstraints { (make) in
            make.bottom.equalTo(header)
            make.width.equalTo(header)
            make.height.equalTo(1)
        }
    }

    func setupTextView(){
        let textView = UITextView()
        textView.scrollEnabled = true
        textView.backgroundColor = UIColor.whiteColor()
        textView.editable = false

        textView.font = UIFont(name: "OpenSans-Semibold", size: 20)
        textView.textContainerInset = UIEdgeInsets(top: 23, left: 15, bottom: 10, right: 15)
        textView.textColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1.0)
        textView.dataDetectorTypes = .All

        view.addSubview(textView)
        textView.snp_makeConstraints { (make) in
            make.top.equalTo(header.snp_bottom)
            make.leading.trailing.bottom.equalTo(view)
        }
        self.textView = textView
    }

    func showTextToView(){
        if let txtURL = NSBundle.mainBundle().URLForResource("aboutUs", withExtension: "txt"){
            do{
                let text = try NSString(contentsOfURL: txtURL, encoding: NSUTF8StringEncoding)
                textView.text = text as String
            }
            catch{
                print(NSError.description())
            }
        }else{
            print(NSError.description())
        }
    }

    func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool {
        return true
    }
 }

