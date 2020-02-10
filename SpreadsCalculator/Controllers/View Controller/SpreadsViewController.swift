//
//  SpreadsViewController.swift
//  SpreadsCalculator
//
//  Created by Devin Singh on 2/10/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class SpreadsViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var CalculateButton: CalculateButton!
    
    @IBOutlet weak var buyStrike: UITextField!
    @IBOutlet weak var sellStrike: UITextField!
    @IBOutlet weak var limitPrice: UITextField!
    @IBOutlet weak var popTextField: UITextField!
    
    
    // MARK: - Lifecycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC" {
            guard let buyStrike = buyStrike.text,
                let sellStrike = sellStrike.text,
                let limitPrice = limitPrice.text,
                let pop = popTextField.text else { return }
            
            guard let bStrike = Double(buyStrike),
                let sStike = Double(sellStrike),
            let lPrice = Double(limitPrice),
                let popDouble = Double(pop) else { return }
            
            let spreadResult = SpreadResult(buyStrikePrice: bStrike, sellStrikePrice: sStike, limitPrice: lPrice, pop: popDouble)
            
            guard let destinationVC = segue.destination as? ResultViewController else { return }
            
            destinationVC.spreadResult = spreadResult
        }
    }
}

