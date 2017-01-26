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
}

extension SKSpriteNode {
    func move(in direction: CGFloat) {
        func radians(_ x: CGFloat) -> CGFloat {
            return x * CGFloat(M_PI) / 180
        }
        
        if direction < 90 && direction > 0 {
            let dy = tan(radians(direction))
            self.run(SKAction.moveBy(x: 200, y: dy * 200, duration: 3))
        } else if direction < 180 {
            let newDirection = 180 - direction
            let dy = tan(radians(newDirection))
            self.run(SKAction.moveBy(x: -200, y: dy * 200, duration: 3))
        } else if direction < 270 {
            let newDirection = direction - 180
            let dy = -tan(radians(newDirection))
            self.run(SKAction.moveBy(x: -200, y: dy * 200, duration: 3))
        } else if direction < 360 {
            let newDirection = 360 - direction
            let dy = -tan(radians(newDirection))
            self.run(SKAction.moveBy(x: 200, y: dy * 200, duration: 3))
        }
    }
}
