import SpriteKit
import GameplayKit
import HLSpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let upperLeft = SKSpriteNode(color: UIColor.red, size: CGSize(width: 100, height: 100))
        upperLeft.anchorPoint = CGPoint(x: 0, y: 1)
        let point = view.convert(CGPoint.zero, to: self)
        upperLeft.position = point
        self.addChild(upperLeft)
        
        let middle = SKSpriteNode(color: UIColor.red, size: CGSize(width: 100, height: 100))
        middle.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.addChild(middle)
    }
}
