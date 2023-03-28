//
//  ViewController.swift
//  FirstAnimation
//
//  Created by Narala,Jayachandra on 3/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var ImageOutlet: UIImageView!
    
    
    @IBOutlet weak var HappyOutlet: UIButton!
    
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    
    
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    
    @IBOutlet weak var shakemeOutlet: UIButton!
    
    
    @IBOutlet weak var showmeoutlet: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // move the image view outside of the screen view
        ImageOutlet.frame.origin.x = view.frame.maxX
        // similarly, move other components as well outside of the screen
        HappyOutlet.frame.origin.x = view.frame.width
        sadOutlet.frame.origin.x = view.frame.width
        angryOutlet.frame.origin.x = view.frame.width
        shakemeOutlet.frame.origin.x = view.frame.width
        
    }


    @IBAction func happyActionBtn(_ sender: Any) {
        animateImage('happy')
    }
    
   
    
    @IBAction func sadActionBtn(_ sender: Any) {
    }
    
    
    @IBAction func angryActionBtn(_ sender: Any) {
    }
    
    
    @IBAction func shakemeActionBtn(_ sender: Any) {
    }
    
    
    
    @IBAction func showmeActionBtn(_ sender: Any) {
    }
    
    
    
}

