//
//  ViewController.swift
//  HelloApp
//
//  Created by Narala,Jayachandra on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputNameOutlet: UITextField!
    
    @IBOutlet weak var DisplayLabelOutlet: UILabel!
    
    
    @IBOutlet weak var InputLastName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        // read the input name and store it
        // (assigning it to a varuable.)
        
        var input = InputNameOutlet.text!
        var lastName = InputLastName.text!
        
        // perform string interpolation (Hello, Jame Bond) and assign it to the display label.
        
        DisplayLabelOutlet.text = "Hello, \(lastName)\(input)!"
    }
    
}

