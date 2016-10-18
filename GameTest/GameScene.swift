import SpriteKit
import GameplayKit
import HLSpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let repeating: [AnyObject] = [AnyObject](repeating: NSNull(), count: 20)
        var colors = [[AnyObject]](repeating: repeating, count: 10)
        for i in 0..<20 {
            colors[5][i] = SKSpriteNode(color: UIColor.white, size: CGSize(width: 50, height: 50))
            self.addChild(colors[5][i] as! SKSpriteNode)
        }
        let gridLayout = HLGridLayoutManager(squareSize: CGSize(width: 50, height: 50))!
        gridLayout.fillMode = .downThenRight
        gridLayout.layoutWith2DArray(colors)
    }
}
