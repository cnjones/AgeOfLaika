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
        if humanYearsTextField.text != ""{
            var humanYearsDouble = Double((humanYearsTextField.text as NSString).doubleValue)
            var dogYearsDouble:Double
            if humanYearsDouble > 0{
                if humanYearsDouble > 2{
                    var dogYearsFirstDouble = (humanYearsDouble - 2) * 4
                    var dogYearsSecondDouble = (2 * 10.5)
                    dogYearsDouble = dogYearsFirstDouble + dogYearsSecondDouble
                }
                else{
                    dogYearsDouble = humanYearsDouble * 10.5
                }
                var dogYearsInt = Int(dogYearsDouble)
                if dogYearsDouble == Double(dogYearsInt){
                    dogYearsLabel.text = "\(dogYearsInt)"
                }
                else{
                    dogYearsLabel.text = "\(dogYearsDouble)"
                }
                var humanYearsInt = Int(humanYearsDouble)
                if humanYearsDouble == Double(humanYearsInt){
                    humanYearsTextField.text = "\(Int(humanYearsDouble))"
                }
                else{
                    humanYearsTextField.text = "\(humanYearsDouble)"
                }
            }
            else{
                humanYearsTextField.text = "0"
                dogYearsLabel.text = "0"
            }
        }
        else{
            dogYearsLabel.text = "0"
        }
        //dogYearsLabel.text = "\(humanYearsTextField.text.toInt()!*7)"
        humanYearsTextField.resignFirstResponder()
    }

}