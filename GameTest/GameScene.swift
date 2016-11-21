import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let label = NORLabelNode(text: "Highscore (Easy): 100\nHighscore (Normal): 100\nHighscore (Hard): 100")
        label.fontSize = 60
        self.addChild(label)
    }
}
