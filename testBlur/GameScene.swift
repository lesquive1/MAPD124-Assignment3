//
//  GameScene.swift
//  testBlur
//
//  Created by Luis Esquivel on 2017-03-28.
//  Copyright © 2017 luis. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var blurSprite: SKSpriteNode?
    
    var orangeSprite:SKSpriteNode?
    var bananaSprite:SKSpriteNode?
    var bellSprite:SKSpriteNode?
    var spinSprite:SKSpriteNode?
    
    
    override func didMove(to view: SKView) {
        
        //orangeSprite = Orange()
        //self.addChild(orangeSprite!)
        
        blurSprite = SKSpriteNode(imageNamed: "slotmachine")
        blurSprite?.scale(to: CGSize(width: 375, height: 600))
        blurSprite?.position = CGPoint(x: 187, y: 300)
        self.addChild(blurSprite!)
        
        
        orangeSprite = SKSpriteNode(imageNamed: "orange")
        orangeSprite?.scale(to: CGSize(width: 70, height: 70))
        orangeSprite?.position = CGPoint(x: 83, y: 260)
        orangeSprite?.zPosition = 1 // order in layer
        self.addChild(orangeSprite!)
        
        bananaSprite = SKSpriteNode(imageNamed: "banana")
        bananaSprite?.scale(to: CGSize(width: 70, height: 70))
        bananaSprite?.position = CGPoint(x: 186, y: 260)
        bananaSprite?.zPosition = 1 // order in layer
        self.addChild(bananaSprite!)
        
        bellSprite = SKSpriteNode(imageNamed: "bell")
        bellSprite?.scale(to: CGSize(width: 70, height: 70))
        bellSprite?.position = CGPoint(x: 292, y: 260)
        bellSprite?.zPosition = 1 // order in layer
        self.addChild(bellSprite!)
        
        
        spinSprite = SKSpriteNode(imageNamed: "spin")
        spinSprite?.scale(to: CGSize(width: 70, height: 70))
        spinSprite?.position = CGPoint(x: 186 , y: 60)
        spinSprite?.zPosition = 1 // order in layer
        self.addChild(spinSprite!)
        
        
    }
    

    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        //orangeSprite?.Update()
    }
}
