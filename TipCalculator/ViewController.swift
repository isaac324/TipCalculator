//
//  ViewController.swift
//  TipCalculator
//
//  Created by Isaac Avila on 9/2/19.
//  Copyright © 2019 Isaac Avila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var PercentControl: UISegmentedControl!
    @IBOutlet weak var InputCash: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func CalculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15]
        let bill = Double(InputCash.text!) ?? 0
        let tip = (bill * tipPercent[PercentControl.selectedSegmentIndex])
        let total = tip + bill
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
    

}

