//
//  ViewController.swift
//  MyfirstImage
//
//  Created by Narala,Jayachandra on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myImageoutlet: UIImageView!
    
    
    @IBOutlet weak var displayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func displayoutlet(_ sender: Any) {
        
        myImageoutlet.image = UIImage(named: "modi")
        
        displayText.text! = "My pride Prime Minister of India"
    }
    
    // Myimage
    
   
    
    
    
    // text of my image
    
    
}

