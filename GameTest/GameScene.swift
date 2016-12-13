import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    var sprite: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        let wait = SKAction.wait(forDuration: 2)
        let pause = SKAction.run { self.isPaused = true }
        self.run(SKAction.sequence([wait, pause]))
        sprite = SKSpriteNode(imageNamed: "Spaceship")
        sprite.anchorPoint = CGPoint.zero
        sprite.position = CGPoint(x: self.frame.width / -2, y: self.frame.height / -2)
        sprite.zPosition = 1000
//        self.addChild(sprite)
    }
    
    override func update(_ currentTime: TimeInterval) {
        print("update")
    }
}
