import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let wait = SKAction.wait(forDuration: 2)
        let pause = SKAction.run { self.isPaused = true }
        self.run(SKAction.sequence([wait, pause]))
    }
    
    override func update(_ currentTime: TimeInterval) {
        print("update")
    }
}
