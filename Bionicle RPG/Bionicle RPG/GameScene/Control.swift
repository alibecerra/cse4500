//
//  Control.swift
//  Bionicle RPG
//
//  Created by Ali Becerra on 5/14/25.
//

import Foundation
import SpriteKit

extension GameScene {
    
    func ControlBallAngle(Degree: CGFloat){
        if (Degree >= -45 && Degree < 45){
            //print("Tahus current direction is East")
            Player.currentDirection = Direction.E
        }else if (Degree >= 45 && Degree < 135){
            //print("Tahus current direction is North")
            Player.currentDirection = Direction.N
        }else if (Degree >= 135 && Degree < 180){
            //print("Tahus current direction is West")
            Player.currentDirection = Direction.N
        }else if (Degree >= -180 && Degree < -135){
            //print("Tahus direction is west ")
            Player.currentDirection = Direction.N
        }else if(Degree >= -135 && Degree < -45){
            //print("Tahus direction is South")
            Player.currentDirection = Direction.S
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches){
            let location = touch.location(in: self)
            
            // Method 1
            //Player.position = location
            
            //Method 2
           // let WalkAction = SKAction.move(to: location, duration: 5)
           // Player.run(WalkAction)
            
//            TouchPoint = location
            if location.x < 0{
                ControlBase.position = location
                ControlBall.position = ControlBase.position
            }else{
                if AttackButtonBase.frame.contains(location){
                    print("Attack")
                }else if HealthButtonBase.frame.contains(location){
                    print("Heal")
                }else if ElementalButtonBase.frame.contains(location){
                    print("Meteor")
                }
            }
            
        }
    }

    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if location.x < 0{
                let DeltaX = location.x - ControlBase.position.x
                let DeltaY = location.y - ControlBase.position.y
                let Angle = atan2(DeltaY, DeltaX)
                
                let Degree = Angle * CGFloat(180/Double.pi)
                ControlBallAngle(Degree: Degree)
                
                let length = ControlBase.frame.size.width / 2
                let DistanceX = length * cos(Angle)
                let DistancyY = length * sin(Angle)
                
                if ControlBase.frame.contains(location){
                    ControlBall.position = location
                }else{
                    ControlBall.position = CGPoint(x: ControlBase.position.x + DistanceX, y: ControlBase.position.y + DistancyY)
                }
            }
            
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches{
            let location = touch.location(in: self)
            
            if location.x < 0
                {
                let MoveCenterAction = SKAction.move(to: ControlBase.position, duration: 0.2)
                MoveCenterAction.timingMode = .easeOut
                ControlBall.run(MoveCenterAction)
                Player.currentDirection = Direction.ST
            }
        }
        
        
    }
}
