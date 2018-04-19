//
//  UILabel.swift
//  TextAttributes
//
//  Created by Boris Bielik on 19/04/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

public extension UILabel {
    
    public var textAttributes: TextAttributes! {
        set {
            if let fnt = newValue?[NSAttributedStringKey.font] as? UIFont {
                self.font = fnt
            }
            
            if let bckgroundColor = newValue?[NSAttributedStringKey.backgroundColor] as? UIColor {
                self.backgroundColor = bckgroundColor
            }
            
            if let txtColor = newValue?[NSAttributedStringKey.foregroundColor] as? UIColor {
                self.textColor = txtColor
            }
        }
        get {
            return TextAttributes.attributes(font: font, color: textColor, backgroundColor: backgroundColor)
        }
    }
}
