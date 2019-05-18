//
//  PageBattle.swift
//  Brawl
//
//  Created by Kamilia Latifah on 18/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

class PageBattle: UIViewController {
    
    @IBOutlet weak var buttoncurse1outlet: UIButton!
    
    
    
    @IBAction func buttoncurse1action(_ sender: Any) {
        
        bearTinjuFight()
    }
    
    @IBOutlet weak var buttoncurse2outlet: UIButton!
    
    
    @IBAction func buttoncurse2action(_ sender: Any) {
    }
    
    @IBOutlet weak var bearTinju: UIImageView!
    
    
    @IBOutlet weak var musuhMerah: UIImageView!
    
    
    func bearTinjuFight() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.bearTinju.center.x += 30
            
        }, completion: nil)
        button1balik()
        
    }
    
    func button1balik(){
        bearTinju.frame.origin = CGPoint(x: 30, y: 80)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


