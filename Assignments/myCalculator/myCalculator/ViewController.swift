//
//  ViewController.swift
//  myCalculator
//
//  Created by Narala,Jayachandra on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calOperator: Character = " ";

    @IBOutlet weak var displayOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn5Clicked(_ sender: Any) {
        displayOutlet.text = "5"
        if (operand1 == -1.1){
            operand1 = 5;
        }else{
            operand2 = 5;
                
        }
        
        
    }
    
    @IBAction func btnplusClicked(_ sender: Any) {
        displayOutlet.text = "+"
        if calOperator == " "{
            calOperator = "+";
        }
    }
    
    @IBAction func btn3Clicked(_ sender: Any) {
        displayOutlet.text = "3"
        if operand2 == -1.1{
            operand2 = 3;
        }else{
            operand1 = 3;
        }
    }
    
    @IBAction func equalsClicked(_ sender: Any) {
        displayOutlet.text = "="
        if calOperator == "+"{
            displayOutlet.text = "\(operand1+operand2)"
        }
    }
    
    
}

