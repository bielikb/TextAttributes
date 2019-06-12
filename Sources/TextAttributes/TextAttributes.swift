//
//  TextAttributes.swift
//  TextAttributes
//
//  Created by Boris Bielik on 19/04/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation

#if canImport(UIKit)

import UIKit

public typealias TextAttributes = [NSAttributedString.Key: Any]

public extension Collection where Iterator.Element == (key: NSAttributedString.Key, value: Any) {

    var textAttributes: TextAttributes? {
        return (self as? TextAttributes)
    }

    /// Text Attributes
    ///
    /// - Parameters:
    ///   - font: font
    ///   - color: color
    ///   - backgroundColor: background color
    ///   - kerning: kerning of the text
    /// - Returns: text attributes
    static func attributes(font: UIFont,
                                  color: UIColor,
                                  backgroundColor: UIColor? = nil,
                                  kerning: Float? = nil) -> TextAttributes {
        var attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: color
        ]

        if backgroundColor != nil {
            attributes[.backgroundColor] = backgroundColor
        }

        if let kerning = kerning {
            attributes[.kern] = NSNumber(value: kerning)
        }

        return attributes
    }

    /// Font
    var font: UIFont? {
        return textAttributes?[.font] as? UIFont
    }

    /// Text Color
    var color: UIColor? {
        return textAttributes?[.foregroundColor] as? UIColor
    }

    /// Background color
    var backgroundColor: UIColor? {
        return textAttributes?[.backgroundColor] as? UIColor
    }

    /// Kerning
    var kerning: Float? {
        return (textAttributes?[.kern] as? NSNumber)?.floatValue
    }

    /// Set text color
    mutating func setColor(_ color: UIColor?) {
        var attributes = textAttributes
        attributes?[.foregroundColor] = color
    }

    /// Set background color
    mutating func setBackgroundColor(_ color: UIColor?) {
        var attributes = textAttributes
        attributes?[.backgroundColor] = color
    }
}

#endif
