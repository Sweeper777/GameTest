import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    var button: SKSpriteNode!
    var buttonLabel: SKLabelNode!
    
    override func didMove(to view: SKView) {
        button = childNode(withName: "newGameButton") as! SKSpriteNode
        buttonLabel = button.childNode(withName: "buttonLabel") as! SKLabelNode
        
        button.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        button.run(SKAction.sequence([SKAction.moveBy(x: 100, y: 0, duration: 3), SKAction.moveBy(x: 0, y: 100, duration: 3)]))
        button.run(SKAction.rotate(byAngle: CGFloat(M_PI * 2), duration: 6))
    }
}
