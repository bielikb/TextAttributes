//
//  UILabel.swift
//  TextAttributes
//
//  Created by Boris Bielik on 19/04/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation

#if canImport(UIKit)
import UIKit

public extension UILabel {

    var textAttributes: TextAttributes! {
        set {
            if let fnt = newValue?[.font] as? UIFont {
                self.font = fnt
            }

            if let bckgroundColor = newValue?[.backgroundColor] as? UIColor {
                self.backgroundColor = bckgroundColor
            }

            if let txtColor = newValue?[.foregroundColor] as? UIColor {
                self.textColor = txtColor
            }
        }
        get {
            return TextAttributes.attributes(font: font,
                                             color: textColor,
                                             backgroundColor: backgroundColor
            )
        }
    }
}
#endif
