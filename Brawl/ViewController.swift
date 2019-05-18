//
//  ViewController.swift
//  Brawl
//
//  Created by Kamilia Latifah on 18/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boxcursing1: UITextField!

    //Buat restrict alfabet atau spasi//
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    return string.rangeOfCharacter(from: CharacterSet(charactersIn: " ")) == nil
    }
    

    @IBOutlet weak var boxCursing2: UITextField!
    
    //buat restrict alfabet atau spasi//
    func textField2(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return string.rangeOfCharacter(from: CharacterSet(charactersIn: " ")) == nil
    }
    
    @IBOutlet weak var okbutton: UIButton!
    
    
    @IBAction func buttonOK(_ sender: Any) {
    }
    
    
    @IBOutlet weak var imageBanner: UIImageView!
    
    @IBAction func buttonVenue1Action(_ sender:
        UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boxcursing1.delegate = self
        boxCursing2.delegate = self
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
//        imageButtonVenue2.isUserInteractionEnabled = true
//        imageButtonVenue2.addGestureRecognizer(tapGestureRecognizer)
        
     
        
        
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.boxcursing1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.boxCursing2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.autoreverse, .repeat] , animations: {
            self.imageBanner.frame.origin.y = 138
        }, completion: nil)
        
        
    }
    
    


    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
    }
    
    }


extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == boxcursing1 {
            boxCursing2.becomeFirstResponder()
        } else if textField == boxCursing2 {
            textField.resignFirstResponder()
        }
        return true
    }
 
}

