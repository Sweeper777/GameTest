import SpriteKit
import GameplayKit
import INSpriteKit
import HLSpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let grid = HLGridNode(gridWidth: 4, squareCount: 16, anchorPoint: CGPoint(x: 0.5, y: 0.5), layoutMode: .fill, squareSize: CGSize(width: 100, height: 100), backgroundBorderSize: 1, squareSeparatorSize: 2)
//        grid?.backgroundColor = UIColor.white
        (grid!.squareNode(forSquare: 0) as! HLBackdropItemNode).normalColor = UIColor.blue
        self.addChild(grid!)
    }
    
    func buttonTapped(sender: AnyObject) {
        print("Tapped Button!")
        print(sender)
    }
}
