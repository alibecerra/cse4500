//
//  Move.swift
//  Bionicle RPG
//
//  Created by Ali Becerra on 5/14/25.
//

import Foundation
import SpriteKit

extension Character {
    
    func Function_move() {
        switch currentDirection {
            
        case .ST:
            SpeedX = 0
            SpeedY = 0
            
            if currentDirection != lastDirection {
                removeAction(forKey: "Move")
                
                if lastDirection == Direction.N {
                    self.texture = SKTexture(imageNamed: "TahuMoveN1")
                }
                
                if lastDirection == Direction.E {
                    self.texture = SKTexture(imageNamed: "TahuMoveE1")
                }
                
                if lastDirection == Direction.S {
                    self.texture = SKTexture(imageNamed: "TahuMoveS1")
                }
                
                if lastDirection == Direction.W {
                    self.texture = SKTexture(imageNamed: "TahuMoveW1")
                }
            }
            
        case .E:
            SpeedX = SP
            SpeedY = 0
            
            if currentDirection != lastDirection {
                let moveAtlas = SKTextureAtlas(named: "TahuMoveE.atlas")
                var moveFrame = [SKTexture]()
                
                for i in 1...4 {
                    let textureName = "TahuMoveE\(i)"
                    moveFrame.append(moveAtlas.textureNamed(textureName))
                }
                
                let moveAnimationAction = SKAction.repeatForever(
                    SKAction.animate(with: moveFrame, timePerFrame: 0.125)
                )
                self.run(moveAnimationAction, withKey: "move")
            }
            
        case .S:
            SpeedX = 0
            SpeedY = -SP
            
            if currentDirection != lastDirection {
                let moveAtlas = SKTextureAtlas(named: "TahuMoveS.atlas")
                var moveFrame = [SKTexture]()
                
                for i in 1...4 {
                    let textureName = "TahuMoveS\(i)"
                    moveFrame.append(moveAtlas.textureNamed(textureName))
                }
                
                let moveAnimationAction = SKAction.repeatForever(
                    SKAction.animate(with: moveFrame, timePerFrame: 0.125)
                )
                self.run(moveAnimationAction, withKey: "move")
            }
            
        case .W:
            SpeedX = -SP
            SpeedY = 0
            
            if currentDirection != lastDirection {
                let moveAtlas = SKTextureAtlas(named: "TahuMoveW.atlas")
                var moveFrame = [SKTexture]()
                
                for i in 1...4 {
                    let textureName = "TahuMoveW\(i)"
                    moveFrame.append(moveAtlas.textureNamed(textureName))
                }
                
                let moveAnimationAction = SKAction.repeatForever(
                    SKAction.animate(with: moveFrame, timePerFrame: 0.125)
                )
                self.run(moveAnimationAction, withKey: "move")
            }
            
        case .N:
            SpeedX = 0
            SpeedY = SP
            
            if currentDirection != lastDirection {
                let moveAtlas = SKTextureAtlas(named: "TahuMoveN.atlas")
                var moveFrame = [SKTexture]()
                
                for i in 1...4 {
                    let textureName = "TahuMoveN\(i)"
                    moveFrame.append(moveAtlas.textureNamed(textureName))
                }
                
                let moveAnimationAction = SKAction.repeatForever(
                    SKAction.animate(with: moveFrame, timePerFrame: 0.125)
                )
                self.run(moveAnimationAction, withKey: "move")
            }
        }
        
        self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y + SpeedY)
    }
}
