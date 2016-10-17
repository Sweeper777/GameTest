import SpriteKit
import GameplayKit
import HLSpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let repeating: [SKSpriteNode?] = [SKSpriteNode?](repeating: nil, count: 20)
        var colors = [[SKSpriteNode?]](repeating: repeating, count: 10)
        for i in 0..<20 {
            colors[5][i] = SKSpriteNode(color: UIColor.white, size: CGSize(width: 50, height: 50))
            self.addChild(colors[5][i]!)
        }
        let gridLayout = HLGridLayoutManager(squareSize: CGSize(width: 50, height: 50))!
        gridLayout.fillMode = .downThenRight
        gridLayout.layoutWith2DArray(colors)
    }
}
