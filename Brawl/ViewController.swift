//
//  ViewController.swift
//  Brawl
//
//  Created by Kamilia Latifah on 18/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    
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
    
   
    @IBOutlet weak var banner: UIImageView!
    
    
    @IBAction func buttonOK(_ sender: Any) {
        
        if boxcursing1.text == "" || boxCursing2.text == "" {
            UIDevice.vibrate()
            UIView.animate(withDuration: 0.5, animations: {
                self.view.backgroundColor = .red
            }) { (finished) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.view.backgroundColor = .black
                })
               
//                UIView.animate(withDuration: 0.5, animations: {
//                    self.boxcursing1.backgroundColor = .red
//                }) { (finished) in
//                    UIView.animate(withDuration: 0.5, animations: {
//                        self.boxcursing1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//                    })
//                }
//
//                UIView.animate(withDuration: 0.5, animations: {
//                    self.boxCursing2.backgroundColor = .red
//                }) { (finished) in
//                    UIView.animate(withDuration: 0.5, animations: {
//                        self.boxCursing2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//                    })
//
//                }
            }
            
            
        } else {
        performSegue(withIdentifier: "pageafterokay", sender: self)
            player.stop()
    }
        
    
        if boxcursing1.text == "" {
            UIView.animate(withDuration: 0.5, animations: {
                self.boxcursing1.backgroundColor = .red
            }) { (finished) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.boxcursing1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                                    })
                                }
        } else if boxcursing1.text == "" {
                        self.boxcursing1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                
            }
        
        if boxCursing2.text == "" {
            UIView.animate(withDuration: 0.5, animations: {
                self.boxCursing2.backgroundColor = .red
            }) { (finished) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.boxCursing2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                })
            }
        } else if boxCursing2.text == "" {
            self.boxCursing2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            
        }
        
        
    }
    
    
        
    @IBAction func buttonVenue1Action(_ sender:
        UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PageBattle {
            destination.boxCursing1 = boxcursing1.text; destination.boxCursing2 = boxCursing2.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() //cuma pas pertama kali load//
        
        boxcursing1.delegate = self
        boxCursing2.delegate = self
        
        

        do
        {
            let audioPath = Bundle.main.path(forResource: "Opening 1.2", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            
        }
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(AVAudioSession.Category.playback)
        }
        catch {
        }
        player.play()

        player.numberOfLoops = 100
        
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.boxcursing1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.boxCursing2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
       
        
    
    }
    
    
    
    //buat animasi banner muncul pas balik ke home//
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.autoreverse, .repeat] , animations: {
            self.banner.frame.origin.y = 140
        }, completion: nil)
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
    }
    
    @IBAction func ResumeSoundButton(_ sender: Any) {
    
        player.play()
    
    }
    
    
    
    
@IBAction func PauseButton(_ sender: Any) {
    
    if player.isPlaying {
        player.pause()
    }
    else {
    }
    }
    }
    
extension UIDevice {
    static func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }
}


