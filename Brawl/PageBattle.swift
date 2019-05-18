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
    
    @IBOutlet weak var api: UIImageView!
    
    @IBOutlet weak var labelButtonCurse1: UILabel!
    var boxCursing1: String!

    @IBOutlet weak var labelButtonCurse2: UILabel!
    var boxCursing2: String!
    
    @IBAction func buttoncurse1action(_ sender: Any) {
        
        bearTinjuFight()
        
        musuhTubir()
    }
    
    @IBOutlet weak var buttoncurse2outlet: UIButton!
    
    
    
    @IBAction func buttoncurse2action(_ sender: Any) {
        
        bearTinjuFight()
        musuhTubir()
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
        bearTinju.frame.origin = CGPoint(x: 0, y: 80)
        
    }
    
    func musuhTubir() {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveLinear, animations: {
            self.musuhMerah.center.x -= 70
            }, completion: nil)
        
        musuhBalik()
        
        
        
    }
    
    func musuhBalik() {
        musuhMerah.frame.origin = CGPoint(x: 240, y: 248)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        labelButtonCurse1.text = boxCursing1
        labelButtonCurse2.text = boxCursing2

        buttoncurse1outlet.layer.cornerRadius = 7
        buttoncurse2outlet.layer.cornerRadius = 7
        // Do any additional setup after loading the view.
            
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
