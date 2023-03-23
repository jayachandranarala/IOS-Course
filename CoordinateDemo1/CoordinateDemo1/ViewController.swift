//
//  ViewController.swift
//  CoordinateDemo1
//
//  Created by Narala,Jayachandra on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageviewOl: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = imageviewOl.frame.minX
        let miny = imageviewOl.frame.minY
        
        print("(\(minx),\(miny))")
        
        let maxX = imageviewOl.frame.maxX
        let maxY = imageviewOl.frame.maxY
        print("(\(maxX),\(maxY))")
        
        
        let midX = imageviewOl.frame.midX
        let midY = imageviewOl.frame.midY
        print("(\(midX),\(midY))")
        
        
        
        // move the image to the upper left corner
        
        imageviewOl.frame.origin.x = 0
        imageviewOl.frame.origin.y = 0
        
        
        // move the image to upper right corner
        
        imageviewOl.frame.origin.x = 314
        imageviewOl.frame.origin.y = 0
        
        // move the image to the buttom left corner
        
        imageviewOl.frame.origin.x = 0
        imageviewOl.frame.origin.y = 796
        
        // move the image to the right corner
        imageviewOl.frame.origin.x = 314
        imageviewOl.frame.origin.y = 796
        
        
        // move the imageview to the center of the screen
         // x = (414/2-50) y = (896/2-50)
        imageviewOl.frame.origin.x = 207-50
        imageviewOl.frame.origin.y = 448-50
    }


}

