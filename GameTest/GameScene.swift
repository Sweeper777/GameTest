import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    var sprite: SKSpriteNode!
    var sprite2: SKSpriteNode!
    var bg: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        let wait = SKAction.wait(forDuration: 2)
        let pause = SKAction.run { self.isPaused = true }
        self.run(SKAction.sequence([wait, pause]))
        sprite = SKSpriteNode(imageNamed: "Spaceship")
        sprite.anchorPoint = CGPoint.zero
        sprite.position = CGPoint(x: self.frame.width / -2, y: self.frame.height / -2)
        sprite.zPosition = 1000
//        self.addChild(sprite)
        
        bg = self.childNode(withName: "bg") as! SKSpriteNode
        sprite2 = SKSpriteNode(imageNamed: "Spaceship")
        sprite2.anchorPoint = CGPoint.zero
        sprite2.position = CGPoint(x: self.frame.width / -2, y: self.frame.height / -2)
        sprite2.zPosition = 1000
        bg.addChild(sprite2)
    }
    
    override func update(_ currentTime: TimeInterval) {
        print("update")
    }
}
