//
//  ViewController.swift
//  Cat Years
//
//  Created by Alexander Abushady on 7/21/19.
//  Copyright © 2019 Alexander Abushady. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Outlets for mainpulating the ageField, resultLabel, and imageView
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // Variable for setting the result.
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This makes sure the image of my cat is the correct orientation.
        imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
        
        // This will look for a tap within the View Controller. If it finds a tap it will use the dimissKeyBoard function.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:Selector(("dismissKeyBoard")))
        view.addGestureRecognizer(tap)
    }
    
    // Add Objective-C function that dismisses the software keyboard.
    @objc func dismissKeyBoard() {
        view.endEditing(true)
    }
    
    // Function for when the button is tapped.
    @IBAction func buttonTapped(_ sender: Any) {
        // The first if statement is for making sure a nil is not passed to the rest of the code.
        if ageField.text?.isEmpty == false {
            // Converting the ageField into an Int for doing math.
            let age = Int(ageField.text!)!
            if age == 1 {
                result = 15
            } else if age == 2 {
                result = 24
            } else if age >= 3 {
                result = 24
                /*
                 This for loop is for if a cat is 3 or older. It will remove 3 from age so as not to
                 add too many times to the result. The reasoning behind this is that at 3 years old a cat
                 ages at a rate of 4 years every year.
                */
                for _ in 1...(age - 2) {
                    result += 4
                }
            }
            // This result is for if your cat is less than 1 year old.
            if age == 0 {
                resultLabel.text = "Your cat is less than 15 in cat Years!"
            } else {
                // This result will be if your cat is 1 year or older.
                resultLabel.text = "Your cat is \(result) in cat years!"
            }
        }
        // This will close the keyboard after the button is pressed.
        self.view.endEditing(true)
    }
}
