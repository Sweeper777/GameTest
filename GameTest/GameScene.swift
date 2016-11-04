import SpriteKit
import GameplayKit
import HLSpriteKit

class GameScene: SKScene {
    var upperLeft: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        upperLeft = SKSpriteNode(imageNamed: "block")
        upperLeft.anchorPoint = CGPoint(x: 0, y: 1)
        let point = view.convert(CGPoint.zero, to: self)
        upperLeft.position = point
        let action1 = SKAction.colorize(with: UIColor.red, colorBlendFactor: 0.7, duration: 0)
        let wait = SKAction.wait(forDuration: 1)
        let action2 = SKAction.colorize(withColorBlendFactor: 0, duration: 0)
        upperLeft.run(SKAction.sequence([wait, action1, wait, action2]))
        self.addChild(upperLeft)
    }
    
    func didChangeOrientation() {
        let point = self.view!.convert(CGPoint.zero, to: self)
        upperLeft.position = point
    }
}
