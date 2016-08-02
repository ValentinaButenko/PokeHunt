//
//  PrivacyPolicyView.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 8/2/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import UIKit

class PrivacyPolicyView: UIView{

    var textView: UITextView!
    var declineBtn: UIButton!
    var comfirmBtn: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.setup()
    }

    func setup(){
        self.setupTextView()
        self.showTextToView()

        self.setupDeclineBtn()
        self.setupConfirmBtn()
        
    }

    func setupTextView(){
        let textView = UITextView(frame: CGRect(x: 0,
                                                y: 0,
                                                width: self.frame.size.width,
                                                height: self.frame.size.height - 35))
        textView.scrollEnabled = true
        textView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        textView.editable = false
        textView.font = UIFont(name: "OpenSans", size: 12)
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        textView.textColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1.0)

        self.addSubview(textView)
        self.textView = textView
    }

    func setupDeclineBtn(){
        let declineBtn = UIButton(frame: CGRect(x: 0,
                                                y: self.textView.frame.size.height + 5,
                                                width: self.frame.size.width/2 - 2.5,
                                                height: 30))
        declineBtn.enabled = true
        declineBtn.backgroundColor = UIColor(red: 214/255, green: 69/255, blue: 65/255, alpha: 1.0)
        declineBtn.setTitle("Decline", forState: .Normal)
        declineBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        declineBtn.titleLabel?.font = UIFont(name: "OpenSans", size: 14)

        self .addSubview(declineBtn)
        self.declineBtn = declineBtn
    }

    func setupConfirmBtn(){
        let confirmBtn = UIButton(frame: CGRect(x: self.declineBtn.frame.size.width + 5,
                                                y: self.textView.frame.size.height + 5,
                                                width: self.frame.width/2 - 2.5,
                                                height: 30))
        declineBtn.enabled = true
        confirmBtn.backgroundColor = UIColor(red: 3/255, green: 201/255, blue: 169/255, alpha: 1.0)
        confirmBtn.setTitle("Confirm", forState: .Normal)
        confirmBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        confirmBtn.titleLabel?.font = UIFont(name: "OpenSans", size: 14)

        self .addSubview(confirmBtn)
        self.comfirmBtn = confirmBtn
    }


    func showTextToView(){
        if let txtURL = NSBundle.mainBundle().URLForResource("privacy", withExtension: "txt"){
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
}