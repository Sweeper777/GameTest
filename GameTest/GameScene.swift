import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let action = SKAction.wait(forDuration: 3)
        self.run(action, withKey: "myAction")
        self.perform(#selector(test), with: nil, afterDelay: 1)
        self.perform(#selector(test), with: nil, afterDelay: 4)
    }
    
    func test() {
        print(self.action(forKey: "myAction") == nil ? "Nil" : "Non-nil")
    }
}
