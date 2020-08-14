//
//  ViewController.swift
//  tip
//
//  Created by Neha Shah on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
}

