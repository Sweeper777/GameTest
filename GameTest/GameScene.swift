import SpriteKit
import GameplayKit
import INSpriteKit
import HLSpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let anchorPoint = NSValue(cgPoint: CGPoint(x: 0.5, y: 0.5))
        let scoreboardNode = SKSpriteNode(color: UIColor.yellow.withAlphaComponent(0.77), size: CGSize(width: 700, height: 180))
        scoreboardNode.zPosition = 1001
        let scoreboardTableLayout = HLTableLayoutManager(columnCount: 1, columnWidths: [(0.0)], columnAnchorPoints: [anchorPoint], rowHeights: [(0.0)])!
        scoreboardTableLayout.rowSeparator = 15
        scoreboardNode.hlSetLayoutManager(scoreboardTableLayout)
        
        let scoreLabel = SKLabelNode(text: "SCORE:            0")
        scoreLabel.fontSize = 61
        scoreLabel.fontName = "Courier-Bold"
        scoreLabel.horizontalAlignmentMode = .center
        scoreLabel.fontColor = UIColor.black
        scoreboardNode.addChild(scoreLabel)
        
        let bestScoreLabel = SKLabelNode(text: "BEST:             0")
        bestScoreLabel.fontSize = 61
        bestScoreLabel.horizontalAlignmentMode = .center
        bestScoreLabel.fontName = "Courier-Bold"
        bestScoreLabel.fontColor = UIColor.black
        scoreboardNode.addChild(bestScoreLabel)
        
        scoreboardNode.hlLayoutChildren()
        
        self.addChild(scoreboardNode)
    }
}
