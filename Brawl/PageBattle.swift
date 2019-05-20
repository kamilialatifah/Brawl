//
//  PageBattle.swift
//  Brawl
//
//  Created by Kamilia Latifah on 18/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

import AVFoundation

import AudioToolbox

class PageBattle: UIViewController {
    
    var player2: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func buttonHome(_ sender: Any) {
        
        player2.stop()
    }
    
    @IBAction func buttonMute(_ sender: Any) {
        
        
    }
    
    
    @IBAction func buttonResumeMusic(_ sender: Any) {
    
    }
    
    @IBOutlet weak var apiberkobar: UIImageView!
    
    @IBOutlet weak var buttoncurse1outlet: UIButton!
    
    @IBOutlet weak var api: UIImageView!
    
    @IBOutlet weak var labelButtonCurse1: UILabel!
    var boxCursing1: String!

    @IBOutlet weak var labelButtonCurse2: UILabel!
    var boxCursing2: String!
    
    @IBAction func buttoncurse1action(_ sender: Any) {
        
        bearTinjuFight()
        UIDevice.vibrate()
        
    }
    
    @IBOutlet weak var buttoncurse2outlet: UIButton!
    
    
    
    @IBAction func buttoncurse2action(_ sender: Any) {
        
        musuhFight()
        UIDevice.vibrate()
        
        
    }
    
    @IBOutlet weak var bearTinju: UIImageView!
    
    
    @IBOutlet weak var musuhMerah: UIImageView!
    
    
    
    func bearKenaTonjok(){
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.bearTinju.center.x += 193
        
        }, completion: nil)
        button1balik()
        
    }
    
    func musuhFight(){
        musuhMerah.image = UIImage(named: "villain")
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.musuhMerah.center.x += 140
           
            
        }, completion: nil)
        musuhMerahBalik()
        bearTinju.image = UIImage(named: "bearkenatonjok")
        
        
    }
    
    func musuhMerahBalik(){
        musuhMerah.frame.origin = CGPoint(x: 240, y: 248)
        
    }
    
    func bearTinjuFight() {
        bearTinju.image = UIImage(named: "bearninju")
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.bearTinju.center.x -= 60
        }, completion: nil)
        button1balik()
        musuhMerah.image = UIImage(named: "musuhkenatonjok-1")
        
        
    }
    
    func button1balik(){
        
        bearTinju.frame.origin = CGPoint(x: -75, y: 278)
        
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
    
    override func viewWillDisappear(_ animated: Bool) {
        if player2.isPlaying{
            player2.stop()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if !player2.isPlaying {
            player2.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        labelButtonCurse1.text = boxCursing1
        labelButtonCurse2.text = boxCursing2

        self.buttoncurse1outlet.layer.cornerRadius = 16
        self.buttoncurse2outlet.layer.cornerRadius = 17
        
        do
        {
            let audioPath2 = Bundle.main.path(forResource: "drumpage2", ofType: "mp3")
            try player2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath2!) as URL)
        }
        catch {
            
        }
        let session2 = AVAudioSession.sharedInstance()
        do {
            try session2.setCategory(AVAudioSession.Category.playback)
        }
        catch {
        }
        player2.play()
        
        player2.numberOfLoops = 100
        
        
        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.autoreverse, .repeat] , animations: {
            self.apiberkobar.frame.origin.y = 400
        }, completion: nil)
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
