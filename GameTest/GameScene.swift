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
        upperLeft.run(SKAction.colorize(with: UIColor.red, colorBlendFactor: 0.7, duration: 0))
        self.addChild(upperLeft)
        
        let middle = SKSpriteNode(imageNamed: "collector")
        middle.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        middle.run(SKAction.colorize(with: UIColor.green, colorBlendFactor: 0.7, duration: 0))
        self.addChild(middle)
        
        self.backgroundColor = UIColor.white
    }
    
    func didChangeOrientation() {
        let point = self.view!.convert(CGPoint.zero, to: self)
        upperLeft.position = point
    }
}
