//
//  UIButton.swift
//  TextAttributes
//
//  Created by Boris Bielik on 19/04/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

public extension UIButton {
    
    public var textAttributes: TextAttributes? {
        set {
            setAttributes(newValue, for: .normal)
        }
        get {
            guard let color = titleColor(for: .normal), let font = titleLabel?.font else {
                return nil
            }
            
            return TextAttributes.attributes(font: font, color: color, backgroundColor: backgroundColor)
        }
    }
    
    @objc public func setAttributes(_ attributes: TextAttributes?, for state: UIControlState) {
        titleLabel?.font = attributes?.font
        backgroundColor = attributes?.backgroundColor
        setTitleColor(attributes?.color ?? UIColor.black, for: state)
    }
}
