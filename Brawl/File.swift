//
//  File.swift
//  Brawl
//
//  Created by Kamilia Latifah on 26/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class Projectile: SKScene {
    
    
    override func didMove(to view: SKView) {
        
        func cometrain() {
            let comet = SKSpriteNode(imageNamed: "comet")
            comet.position = CGPoint(x: 274, y: 248)
            comet.zPosition = 1
            self.addChild(comet)
            
            let moveComet = SKAction.moveTo(y: 135 + 100, duration: 0.5)
            let deleteComet = SKAction.removeFromParent()
            let cometSequence = SKAction.sequence([moveComet, deleteComet])
            comet.run(cometSequence)
        }
        
    }
}
