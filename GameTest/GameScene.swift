import SpriteKit
import GameplayKit
import INSpriteKit
import HLSpriteKit

class GameScene: SKScene {
    var swipeUpRecog: UISwipeGestureRecognizer!
    
    override func didMove(to view: SKView) {
        let grid = HLGridNode(gridWidth: 4, squareCount: 16, anchorPoint: CGPoint(x: 0.5, y: 0.5), layoutMode: .fill, squareSize: CGSize(width: 100, height: 100), backgroundBorderSize: 1, squareSeparatorSize: 2)
//        grid?.backgroundColor = UIColor.white
        (grid!.squareNode(forSquare: 0) as! HLBackdropItemNode).normalColor = UIColor.blue
        self.addChild(grid!)
        swipeUpRecog = UISwipeGestureRecognizer(target: self, action: #selector(swipedUp))
        swipeUpRecog.direction = .up
        self.view!.addGestureRecognizer(swipeUpRecog)
        let button = HLLabelButtonNode(color: UIColor.green, size: CGSize(width: 300, height: 100))!
        button.text = "Press Me!"
        button.fontSize = 50
        button.position = CGPoint(x: 0, y: 250)
        self.addChild(button)
    }
    
    func buttonTapped(sender: AnyObject) {
        print("Tapped Button!")
        print(sender)
    }
    
    func swipedUp(sender: AnyObject) {
        print("Swiped up!")
    }
}
