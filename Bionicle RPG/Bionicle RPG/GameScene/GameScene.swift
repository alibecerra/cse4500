//
//  GameScene.swift
//  Bionicle RPG
//
//  Created by Ali Becerra on 5/14/25.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    let Player = Character(imageNamed: "Tahu")
   
    var TouchPoint = CGPoint()
    
    let ControlBase = SKSpriteNode(imageNamed: "ControlBase")
    let ControlBall = SKSpriteNode(imageNamed: "ControlBall")
    
    
    let AttackButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let AttackButton = SKSpriteNode(imageNamed: "AttackIcon")
    
    let ElementalButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let ElementalButton = SKSpriteNode(imageNamed: "ElementalIcon")
    
    let HealthButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let HealthButton = SKSpriteNode(imageNamed: "HealthIcon")
                                   
    
    override func didMove(to view: SKView) {
            
        ControlBase.position = CGPoint(x: -500, y: -200)
        ControlBase.zPosition = 100
        ControlBase.alpha = 0.5
        self.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = 100
        ControlBall.alpha = 0.5
        self.addChild(ControlBall)
        
        
        
        
        AttackButtonBase.position = CGPoint(x: 375, y: -50)
        AttackButtonBase.zPosition = 99
        AttackButtonBase.alpha = 0.5
        self.addChild(AttackButtonBase)
        AttackButton.position = AttackButtonBase.position
        AttackButton.zPosition = 100
        self.addChild(AttackButton)
        
        HealthButtonBase.position = CGPoint(x: 350, y: -225)
        HealthButtonBase.zPosition = 99
        HealthButtonBase.alpha = 0.5
        self.addChild(HealthButtonBase)
        HealthButton.position = HealthButtonBase.position
        HealthButton.zPosition = 100
        self.addChild(HealthButton)
        
        ElementalButtonBase.position = CGPoint(x: 550, y: -125)
        ElementalButtonBase.zPosition = 99
        ElementalButtonBase.alpha = 0.5
        self.addChild(ElementalButtonBase)
        ElementalButton.position = ElementalButtonBase.position
        ElementalButton.zPosition = 100
        self.addChild(ElementalButton)
        
        
        
        Player.zPosition = 110
        self.addChild(Player)
        
        
        

    }
    
    

   
}
