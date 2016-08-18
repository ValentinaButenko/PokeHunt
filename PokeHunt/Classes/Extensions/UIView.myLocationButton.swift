//
//  UIView.myLocationButton.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 8/18/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import UIKit

internal extension UIView{
    func flattenSearch(@noescape filter: (UIView) -> Bool) -> UIView? {
        for (_, e) in subviews.enumerate() {
            if filter(e) {
                return e as UIView
            }
            if let e = e.flattenSearch(filter) {
                return e
            }
        }
        return nil
    }
}