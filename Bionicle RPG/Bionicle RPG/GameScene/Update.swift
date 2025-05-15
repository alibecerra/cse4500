//
//  Update.swift
//  Bionicle RPG
//
//  Created by Ali Becerra on 5/14/25.
//

import Foundation
import SpriteKit

extension GameScene {
  

    override func update(_ currentTime: TimeInterval) {
        
//        if Player.position.x < TouchPoint.x  - 5{
//            Player.position.x = Player.position.x + 5
//        }else if Player.position.x > TouchPoint.x  + 5{
//            Player.position.x = Player.position.x - 5
//        }
//        
//        if Player.position.y < TouchPoint.y - 5{
//            Player.position.y = Player.position.y + 5
//        }else if Player.position.y > TouchPoint.y + 5{
//            Player.position.y = Player.position.y - 5
//        }
        
        Player.Function_move()
    }
        
        
}
