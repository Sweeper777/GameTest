import SpriteKit
import GameplayKit
import INSpriteKit

class GameScene: SKScene {
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
            let button = INSKButtonNode(title: "Press Me!", fontSize: 100)!
            button.setTouchDownTarget(self, selector: #selector(buttonTapped))
            self.addChild(button)
        }
    }
    
    func buttonTapped(sender: AnyObject) {
        print("Tapped Button!")
        print(sender)
    }
}
