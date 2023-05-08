//
//  GameScene.swift
//  Ocean Adventure
//
//  Created by Admin on 2023-05-08.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func sceneDidLoad() {
        loadBackGround()
    }
    
    override func didMove(to view: SKView) {
        
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
    }
    
    func loadBackGround() {
        let oceanBackground = SKSpriteNode(imageNamed: "ocean-background")
        oceanBackground.position = CGPoint(x: 0, y: 0)
        oceanBackground.zPosition = 0
        oceanBackground.xScale = 0.25
        oceanBackground.yScale = 0.25
        addChild(oceanBackground)
    }
}
