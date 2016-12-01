//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Brian Chun on 11/19/16.
//  Copyright © 2016 Brian Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    @IBAction func ClearInputTextField(_ sender: UIButton) {
        poundLabel.text = "\(0)"
        yenLabel.text = "\(0)"
        euroLabel.text = "\(0)"
        inputTextField.text = "\(0)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
       
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?
        ) {
            view.endEditing(true)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

