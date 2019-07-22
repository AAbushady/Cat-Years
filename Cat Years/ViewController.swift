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
    @IBOutlet weak var imageView: UIImageView!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
        
        // This will look for a tap within the View Controller. If it finds a tap it will use the dimissKeyBoard function.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:Selector(("dismissKeyBoard")))
        view.addGestureRecognizer(tap)
    }
    
    // Add Objective-C function that dismisses the software keyboard.
    @objc func dismissKeyBoard() {
        view.endEditing(true)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        if ageField.text?.isEmpty == false {
            let age = Int(ageField.text!)!
            if age == 1 {
                result = 15
            } else if age == 2 {
                result = 24
            } else if age >= 3 {
                result = 24
                for _ in 0...(age - 3) {
                    result += 4
                }
            }
            resultLabel.text = "Your cat is \(result) in cat years!"
        }
        // This will close the keyboard after the button is pressed.
        self.view.endEditing(true)
    }
}
