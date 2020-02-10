//
//  StyleGuide.swift
//  SpreadsCalculator
//
//  Created by Devin Singh on 2/10/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

extension UIView {
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .lightGray) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}

extension UIColor {
    static let greenAccent = UIColor(named: "greenAccent")!
    static let spaceGray = UIColor(named: "spaceGray")!
    static let borderHighlightGray = UIColor(named: "borderHighlight")!
    static let subltleTextColor = UIColor(named: "subtleText")!
    static let mainTextColor = UIColor(named: "mainText")!
    static let blackOverlay = UIColor(named: "blackOverlay")!
    static let purpleAccent = UIColor(named: "purpleAccent")!
}

