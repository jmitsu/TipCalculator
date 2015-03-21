//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jan Cash on 3/8/15.
//  Copyright (c) 2015 Jan Cash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var tipTextField: UITextField!
    
    @IBOutlet weak var tipOutput: UILabel!
    
    @IBOutlet weak var totalOutput: UILabel!
    
    @IBAction func calculateTipButtonPress(sender: AnyObject) {
        
        println("tip")
        
        var amount = (amountTextField.text as NSString).doubleValue
        
        var tipPercent = (tipTextField.text as NSString).doubleValue
        
        var calculatedTip = amount * tipPercent / 100
        
        var calculatedTotal = amount + calculatedTip
        
        tipOutput.text = calculatedTip.description
        
        totalOutput.text = calculatedTotal.description
        
        //format numbers to currency
        
        let numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        tipOutput.text = numberFormatter.stringFromNumber(calculatedTip)
        totalOutput.text = numberFormatter.stringFromNumber(calculatedTotal)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

