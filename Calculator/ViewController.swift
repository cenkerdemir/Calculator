//
//  ViewController.swift
//  Calculator
//
//  Created by Cenker Demir on 4/21/16.
//  Copyright © 2016 Cenker Demir. All rights reserved.
//  written from the iOS9 swift course by Stanford University
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var isUserInTheMiddleOfTyping = false
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if isUserInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }
        else {
            display.text = digit
        }
        isUserInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(sender: UIButton) {
        isUserInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "∏" {
                display.text = String(M_1_PI)
            }
        }
    }
}

