import SpriteKit
import GameplayKit
import INSpriteKit

class GameScene: SKScene {
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        
    }
    
    func buttonTapped(sender: AnyObject) {
        print("Tapped Button!")
        print(sender)
    }
}
