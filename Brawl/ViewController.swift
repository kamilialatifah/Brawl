//
//  ViewController.swift
//  Brawl
//
//  Created by Kamilia Latifah on 18/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonVenue1: UIButton!
    
    @IBOutlet weak var imageBanner: UIImageView!
    
    @IBAction func buttonVenue1Action(_ sender:
        UIButton) {
       sender.setBackgroundImage(UIImage(named: "photo yeah"), for: UIControl.State.normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
        
        
        
        
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.autoreverse, .repeat] , animations: {
            self.imageBanner.frame.origin.y = 75
        }, completion: nil)
        
        
    }

 
}

