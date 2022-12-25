//
//  GameScene.swift
//  FlappyBird
//
//  Created by Shahid on 25.12.22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  var backNode: SKNode!
  var birdNode: SKSpriteNode!


    override func didMove(to view: SKView) {
      backNode = self.childNode(withName: "background")!
      birdNode = self.childNode(withName: "bird") as! SKSpriteNode

      let moving = SKAction.move(by: CGVector(dx: -400, dy: 0), duration: 10)
      backNode.run(moving)
    }
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    birdNode.physicsBody!.applyImpulse(CGVector(dx: 0, dy: 40))

  }
}
