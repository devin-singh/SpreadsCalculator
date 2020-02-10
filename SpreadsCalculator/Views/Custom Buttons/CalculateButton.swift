//
//  CalculateButton.swift
//  SpreadsCalculator
//
//  Created by Devin Singh on 2/10/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class CalculateButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .greenAccent
        self.addCornerRadius()
        self.addAccentBorder()
    }

}
