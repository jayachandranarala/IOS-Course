//
//  ViewController.swift
//  myvowel
//
//  Created by Narala,Jayachandra on 1/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var voweltext: UITextField!
    

    @IBOutlet var displaytext: UIView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    
    // This is action button always given after the view
    // and in this action button we write the logic
    
    @IBAction func buttonaction(_ sender: Any) {
        
        let isvowel = "e"
        switch isvowel {
        case "a","e","i","o","u":
            print("The Entered text has Vowel😃")
        default:print("The Entered text has no vowel☹️")
        }
        
        voweltext.text = "\(isvowel)"
            }
    
}

