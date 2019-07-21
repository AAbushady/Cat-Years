//
//  ViewController.swift
//  Cat Years
//
//  Created by Alexander Abushady on 7/21/19.
//  Copyright © 2019 Alexander Abushady. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This will look for a tap within the View Controller. If it finds a tap it will use the dimissKeyBoard function.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:Selector(("dismissKeyBoard")))
        view.addGestureRecognizer(tap)
    }
    
    // Add Objective-C function that dismisses the software keyboard.
    @objc func dismissKeyBoard() {
        view.endEditing(true)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let age = ageField.text
        if ageField.text != nil {
            let result = (Int(age!) ?? 0) * 7
            resultLabel.text = "Your cat is \(String(result)) in cat years!"
        }
    }
}
