import SpriteKit
import GameplayKit
import HLSpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let repeating: [SKSpriteNode?] = [SKSpriteNode?](repeating: nil, count: 20)
        var colors = [[SKSpriteNode?]](repeating: repeating, count: 10)
        for i in 0..<20 {
            colors[5][i] = SKSpriteNode(color: UIColor.white, size: CGSize(width: 20, height: 20))
        }
        let gridLayout = HLGridLayoutManager(squareSize: CGSize(width: 20, height: 20))!
        gridLayout.fillMode = .downThenRight
        self.hlSetLayoutManager(gridLayout)
        gridLayout.layoutWith2DArray(colors)
        self.hlLayoutChildren()
    }
}
