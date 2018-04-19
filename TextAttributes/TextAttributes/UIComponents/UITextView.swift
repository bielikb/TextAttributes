//
//  UITextView.swift
//  TextAttributes
//
//  Created by Boris Bielik on 19/04/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

public extension UITextView {
    
    public var textAttributes: TextAttributes? {
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
            guard let font = font, let color = textColor else {
                return nil
            }
            
            return TextAttributes.attributes(font: font,
                                             color: color,
                                             backgroundColor: backgroundColor
            )
        }
    }
}
