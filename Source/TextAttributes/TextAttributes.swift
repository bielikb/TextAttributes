//
//  TextAttributes.swift
//  TextAttributes
//
//  Created by Boris Bielik on 19/04/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

public typealias TextAttributes = Dictionary<NSAttributedStringKey, Any>

public extension Collection where Iterator.Element == (key: NSAttributedStringKey, value: Any) {
    
    /// Text Attributes 
    public static func attributes(font: UIFont,
                                  color: UIColor,
                                  backgroundColor: UIColor? = nil,
                                  spacing: Float? = nil) -> TextAttributes {
        var attributes: [NSAttributedStringKey : Any] = [
            .font: font,
            .foregroundColor: color
        ]
        
        if backgroundColor != nil {
            attributes[.backgroundColor] = backgroundColor
        }
        
        if let spacing = spacing {
            attributes[.kern] = NSNumber(value: spacing)
        }
        
        return attributes
    }
    
    /// Font
    public var font: UIFont? {
        return (self as? TextAttributes)?[.font] as? UIFont
    }
    
    /// Text Color
    public var color: UIColor? {
        return (self as? TextAttributes)?[.foregroundColor] as? UIColor
    }
    
    /// Background color
    public var backgroundColor: UIColor? {
        return (self as? TextAttributes)?[.backgroundColor] as? UIColor
    }
    
    /// Kerning
    public var spacing: Float? {
        return ((self as? TextAttributes)?[.kern] as? NSNumber)?.floatValue
    }
    
    /// Set text color
    public mutating func setColor(_ color: UIColor?) {
        var attributes = (self as? TextAttributes)
        attributes?[.foregroundColor] = color
    }
    
    /// Set background color
    public mutating func setBackgroundColor(_ color: UIColor?) {
        var attributes = (self as? TextAttributes)
        attributes?[.backgroundColor] = color
    }
}
