import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    var button: SKSpriteNode!
    var buttonLabel: SKLabelNode!
    
    override func didMove(to view: SKView) {
        button = childNode(withName: "newGameButton") as! SKSpriteNode
        buttonLabel = button.childNode(withName: "buttonLabel") as! SKLabelNode
        
        print(button.isUserInteractionEnabled)
        print(buttonLabel.isUserInteractionEnabled)
        
        print(self.isUserInteractionEnabled)
        
        self.isUserInteractionEnabled = false
    }
}
