//
//  Character.swift
//  Bionicle RPG
//
//  Created by Ali Becerra on 5/14/25.
//

import Foundation
import SpriteKit

class Character: SKSpriteNode {
    
    var currentDirection = Direction.ST
    var lastDirection = Direction.ST
    let SP = CGFloat(5)
    
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
}
