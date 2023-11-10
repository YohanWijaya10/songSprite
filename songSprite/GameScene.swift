//
//  GameScene.swift
//  songSprite
//
//  Created by Yohan Wijaya on 10/11/23.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        scaleMode = .aspectFill

    
     

        let background = SKSpriteNode(imageNamed: "background")
        background.scale(to: CGSize(width: self.size.width, height: self.size.height)) // Menyesuaikan skala dengan ukuran layar
        background.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2) // Memposisikan latar belakang di tengah layar
        addChild(background)
        
        let kickleft =  SKSpriteNode(imageNamed: "kickleft")
        kickleft.setScale(CGFloat(1.4))
        kickleft.position = CGPoint(x: 50, y: 100)
        addChild(kickleft)
        
        
        let snareleft =  SKSpriteNode(imageNamed: "snareleft")
        snareleft.setScale(CGFloat(1.4))
        snareleft.position = CGPoint(x: 150, y: 100)
        addChild(snareleft)
        
        
        let snareright =  SKSpriteNode(imageNamed: "snareright")
        snareright.setScale(CGFloat(1.4))
        snareright.position = CGPoint(x: 250, y: 100)
        addChild(snareright)
        
        let kickright =  SKSpriteNode(imageNamed: "kickright")
        kickright.setScale(CGFloat(1.4))
        kickright.position = CGPoint(x: 350, y: 100)
        addChild(kickright)
    
        
        
        var imageNodes: [SKSpriteNode] = []
        
        for imageName in
                ["bar1", "kosong", "kosong", "kosong", "kosong", "bar1", "kosong", "kosong"] {
            let imageNode = SKSpriteNode(imageNamed: imageName)
            imageNodes.append(imageNode)
            addChild(imageNode)
        }
        
        let sequenceAction = SKAction.sequence([
            SKAction.run {
                for (index, imageNode) in imageNodes.enumerated() {
                    // Adjust the initial x and y values as needed
                    let xStartPosition = 350
                    let yStartPosition = 890
        
                    imageNode.position = CGPoint(x: xStartPosition, y: yStartPosition)
                    imageNode.setScale(CGFloat(1.3))
                    
                    // Create an action to change the x position of the image node to 200 over a duration of 1.6 seconds
                    let moveAction = SKAction.move(to: CGPoint(x: 350, y: 100), duration: 1.6)
                    
                    // Create an action to move the image back to the initial position
                    let resetPositionAction = SKAction.move(to: CGPoint(x: xStartPosition, y: yStartPosition), duration: 0)
                    
                    // Create a sequence to run actions one by one with a delay
                    let fadeInAction = SKAction.fadeIn(withDuration: 0) // Add this line
                    
                    let sequenceAction = SKAction.sequence([SKAction.wait(forDuration: 0.2 * Double(index)), fadeInAction, moveAction, resetPositionAction])
                    
                    // Run the sequence action on the image node
                    imageNode.run(sequenceAction)
                }
            },
            SKAction.wait(forDuration: 1.6) // Wait for 2 seconds before repeating
        ])

        let repeatAction = SKAction.repeat(sequenceAction, count: 16) // Repeat the sequence action twice
        self.run(repeatAction)
        
        
        var snareNodes: [SKSpriteNode] = []

        for imageName1 in ["kosong", "kosong", "bar2", "kosong", "kosong", "kosong", "bar2", "kosong"] {
            let nodeSnare = SKSpriteNode(imageNamed: imageName1)
            snareNodes.append(nodeSnare)
            addChild(nodeSnare)
            
        }
        
        let sequenceAction1 = SKAction.sequence([
            SKAction.run {
                for (index, snareNodes) in snareNodes.enumerated() {
                    // Adjust the initial x and y values as needed
                    let xStartPosition = 150
                    let yStartPosition = 890
                    snareNodes.position = CGPoint(x: xStartPosition, y: yStartPosition)
                    snareNodes.setScale(CGFloat(1.3))
                    
                    // Create an action to change the x position of the image node to 200 over a duration of 1.6 seconds
                    let moveAction = SKAction.move(to: CGPoint(x: 150, y: 100), duration: 1.6)
                    
                    // Create an action to move the image back to the initial position
                    let resetPositionAction = SKAction.move(to: CGPoint(x: xStartPosition, y: yStartPosition), duration: 0)
                    
                    // Create a sequence to run actions one by one with a delay
                    let fadeInAction = SKAction.fadeIn(withDuration: 0) // Add this line
                    
                    let sequenceAction = SKAction.sequence([SKAction.wait(forDuration: 0.2 * Double(index)), fadeInAction, moveAction, resetPositionAction])
                    
                    // Run the sequence action on the image node
                    snareNodes.run(sequenceAction)
                }
            },
            SKAction.wait(forDuration: 1.6) // Wait for 2 seconds before repeating
        ])

        let repeatAction1 = SKAction.repeat(sequenceAction1, count: 16) // Repeat the sequence action twice
        self.run(repeatAction1)

        
        
    }
    
}

