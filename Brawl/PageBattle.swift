//
//  PageBattle.swift
//  Brawl
//
//  Created by Kamilia Latifah on 18/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import UIKit

import GameplayKit

import SpriteKit

import AVFoundation

import AudioToolbox

class PageBattle: UIViewController {
    
    var player2: AVAudioPlayer = AVAudioPlayer()
    
     let urlPukul = URL(fileURLWithPath: Bundle.main.path(forResource: "suaratonjoksedetik", ofType: "mp3")!)
    
    var machineGun: AVAudioPlayer = AVAudioPlayer()
    
    let urlMachineGun = URL(fileURLWithPath: Bundle.main.path(forResource: "machinegun3", ofType: "mp3")!)
    
    var suaraPukul: AVAudioPlayer = AVAudioPlayer()
    
    //view//
    
    
    @IBOutlet weak var boxforvillain: UIView!
    
    @IBOutlet weak var boxforbear: UIView!
    
    
    //Image//
    @IBOutlet weak var meteor1: UIImageView!
    @IBOutlet weak var meteor2: UIImageView!
    @IBOutlet weak var apiberkobar: UIImageView!
    @IBOutlet weak var bearTinju: UIImageView!
    @IBOutlet weak var musuhMerah: UIImageView!
    @IBOutlet weak var bearlilhead: UIImageView!
    @IBOutlet weak var villainlilhead: UIImageView!
    
    //Label//
    @IBOutlet weak var labelButtonCurse1: UILabel!
    var boxCursing1: String!
    @IBOutlet weak var labelButtonCurse2: UILabel!
    var boxCursing2: String!
    
    //Button//
    //Action//
    @IBAction func buttoncurse1action(_ sender: Any) {
        
        bearTinjuFight()
        UIDevice.vibrate()
       suaraTonjok()
        
        
    }
    @IBAction func buttoncurse2action(_ sender: Any) {
        
        musuhFight()
        UIDevice.vibrate()
        suaraGun()
       
    }
    @IBAction func buttonHome(_ sender: Any) {
        
        player2.stop()
    }
    //outlet//
    @IBOutlet weak var buttoncurse1outlet: UIButton!
    @IBOutlet weak var buttoncurse2outlet: UIButton!
    
    
    
    
    
    //function animation//
    //blinking head//
    
    func blinkingbear() {
        
    }
    //Meteor//
    func meteorrain1() {
        
        meteor1.image = UIImage(named: "meteor")
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.meteor1.center.x -= 200
            self.meteor1.center.y -= 80
            
        }, completion: nil)
        meteor1Balik()
    }

    func meteor1Balik(){
        meteor1.frame.origin = CGPoint (x: -200, y: 237)
    }
    
    //bear//
    func bearKenaTonjok(){
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.bearTinju.center.x += 30
        
        }, completion: nil)
        button1balik()
    
        
    }
    
    
    func bearTinjuFight() {
        bearTinju.image = UIImage(named: "bearninju")
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.bearTinju.center.x -= 80
        }, completion: nil)
        button1balik()
        musuhMerah.image = UIImage(named: "musuhkenatonjok-1")
        musuhTubir()
        
    }
    
    
    func button1balik(){
        
        bearTinju.frame.origin = CGPoint(x: -75, y: 278)
        
    }
    
    //bola merah//
    
    func musuhFight(){
        musuhMerah.image = UIImage(named: "villain")
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.musuhMerah.center.x += 140
            
        }, completion: nil)
        musuhMerah.image = UIImage(named: "musuhcharge")
        meteorrain1()
        musuhMerahBalik()
        bearKenaTonjok()
        bearTinju.image = UIImage(named: "bearkenatonjok")
        
        
    }
    
    func musuhMerahBalik(){
        musuhMerah.frame.origin = CGPoint(x: 240, y: 248)
        
        
    }
    
    
    
    func musuhTubir() { //kena tonjok kamsudnya//
        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveLinear, animations: {
            self.musuhMerah.center.x -= 70
            }, completion: nil)
        
        musuhBalik()
    }
    
    
    func musuhBalik() {
        musuhMerah.frame.origin = CGPoint(x: 240, y: 248)
    
    }
    
    
    //Suara//
    func suaraTonjok() {
        do {
            suaraPukul = try AVAudioPlayer(contentsOf: urlPukul)
            suaraPukul.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    func suaraGun() {
        do {
            machineGun = try
            AVAudioPlayer(contentsOf: urlMachineGun)
            machineGun.play()
        } catch {
        }
    }
    
    //end of action pasca viewload//
    
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
        
        
        //backsound backsound//
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
    }
    
    @IBAction func buttonMute(_ sender: Any) {
        
        
        if player2.isPlaying {
            player2.pause()
            (sender as AnyObject).setBackgroundImage(UIImage(named: "playbutton4"), for: UIControl.State.normal)
            
            
        } else if !player2.isPlaying {
            player2.play()
            (sender as AnyObject).setBackgroundImage(UIImage(named: "mutebutton4"), for: UIControl.State.normal)
        }
    }

    
    @IBAction func buttonResume(_ sender: Any) {
        player2.play()
        machineGun.play()
        suaraPukul.play()
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

extension UIView{
    
}
