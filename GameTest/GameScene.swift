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
        sprite.position = CGPoint(x: self.frame.width / -2 + sprite.frame.width / 2, y: self.frame.height / -2 + sprite.frame.width / 2)
        sprite.zPosition = 1000
        sprite.run(SKAction.rotate(toAngle: CGFloat(M_PI), duration: 0))
        self.addChild(sprite)
    }
    
    override func update(_ currentTime: TimeInterval) {
        print("update")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sprite.run(SKAction.move(to: CGPoint.zero, duration: 5))
    }
}
