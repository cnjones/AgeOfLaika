//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Christopher Jones on 2014-09-26.
//  Copyright (c) 2014 ONESTEP Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        dogYearsLabel.text = "\(humanYearsTextField.text.toInt()!*7)"
        humanYearsTextField.resignFirstResponder()
    }

}

