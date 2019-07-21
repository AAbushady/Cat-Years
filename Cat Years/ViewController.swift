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
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let age = ageField.text
        if age != nil {
            let result = Int(age!)! * 7
            resultLabel.text = "Your cat is \(String(result)) in cat years!"
        }
    }
    
}

