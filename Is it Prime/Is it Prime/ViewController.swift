//
//  ViewController.swift
//  Is it Prime
//
//  Created by Mani on 8/20/18.
//  Copyright © 2018 Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func isItPrime(_ sender: Any) {
        if let userEnteredString = numberTextField.text {
           let userEnteredInteger = Int(numberTextField.text!)
            if let number = userEnteredInteger {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i+=1
                }
                if isPrime {
                    resultLabel.text = "It is Prime!"
                } else {
                    resultLabel.text = "Not a Prime!"
                }
            } else {
                resultLabel.text = "Please enter positive whole number!"
            }
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

