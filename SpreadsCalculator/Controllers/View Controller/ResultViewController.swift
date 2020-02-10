//
//  ResultViewController.swift
//  SpreadsCalculator
//
//  Created by Devin Singh on 2/10/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - Properties
    
    var spreadResult: SpreadResult? {
        didSet {
            loadViewIfNeeded()
            updateViews()
        }
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var tradeTypeVC: UILabel!
    @IBOutlet weak var collateralLabel: UILabel!
    @IBOutlet weak var premiumLabel: UILabel!
    @IBOutlet weak var maxLossLabel: UILabel!
    @IBOutlet weak var ytdLabel: UILabel!
    
    // MARK: - Lifecycle Functions

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Private functions
    
    private func updateViews(){
        guard let spreadResult = self.spreadResult else { return }
        
        if spreadResult.isCCS {
            tradeTypeVC.text = "Call Credit Spread"
        }else{
            tradeTypeVC.text = "Put Credit Spread"
        }
        
        collateralLabel.text = "Collateral: \(String(spreadResult.collateral))"
        premiumLabel.text = "Premium: \(String(spreadResult.premium))"
        maxLossLabel.text = " Max Loss: \(String(spreadResult.maxLoss))"
        ytdLabel.text = "APY: \(String(spreadResult.approxYtd))%"
        
    }
}
