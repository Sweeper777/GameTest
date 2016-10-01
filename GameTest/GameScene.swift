import SpriteKit
import GameplayKit
import INSpriteKit
import HLSpriteKit

class GameScene: SKScene {
    var swipeUpRecog: UISwipeGestureRecognizer!
    var button: HLLabelButtonNode!
    
    override func didMove(to view: SKView) {
        self.hlSetLayoutManager(HLTableLayoutManager(columnCount: 1, columnWidths: [(0.0)], columnAnchorPoints: [(0.0)], rowHeights: [(0.0)]))
        
        let bannerNode = SKLabelNode(text: "some text")
        bannerNode.fontSize = 50
        self.addChild(bannerNode)
        
        let grid = HLGridNode(gridWidth: 10, squareCount: 200, anchorPoint: CGPoint(x: 0.5, y: 0.5), layoutMode: .fill, squareSize: CGSize(width: 40, height: 40), backgroundBorderSize: 1, squareSeparatorSize: 2)
//        grid?.backgroundColor = UIColor.white
        (grid!.squareNode(forSquare: 0) as! HLBackdropItemNode).normalColor = UIColor.blue
        self.addChild(grid!)
        
        swipeUpRecog = UISwipeGestureRecognizer(target: self, action: #selector(swipedUp))
        swipeUpRecog.direction = .up
        self.view!.addGestureRecognizer(swipeUpRecog)
        button = HLLabelButtonNode(color: UIColor.green, size: CGSize(width: 300, height: 100))!
        button.text = "Press Me!"
        button.fontSize = 50
        button.position = CGPoint(x: 0, y: 250)
        self.addChild(button)
        
        self.hlLayoutChildren()
    }
    
    func buttonTapped(sender: AnyObject) {
        print("Tapped Button!")
        print(sender)
    }
    
    func swipedUp(sender: AnyObject) {
        print("Swiped up!")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let message = HLMessageNode(color: UIColor.red, size: CGSize(width: 250, height: 250))
//        self.addChild(message!)
        message?.showMessage("Hello!", parent: self)
    }
}
