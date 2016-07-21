//
//  UIView.bgSnapshot.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/21/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import UIKit

internal extension UIView{
    func pb_takeSnapshot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.mainScreen().scale)

        drawViewHierarchyInRect(self.bounds, afterScreenUpdates: true)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}