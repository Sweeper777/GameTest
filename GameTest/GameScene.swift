import SpriteKit
import GameplayKit
import HLSpriteKit

class GameScene: SKScene {
    
//    override func didMove(to view: SKView) {
//        let recognizer = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
//        recognizer.direction = .right
//        recognizer.numberOfTouchesRequired = 1
//        self.view?.addGestureRecognizer(recognizer)
//    }
//    
//    func swiped(sender: UISwipeGestureRecognizer) {
//        print(sender.numberOfTouches)
//    }
    
    override func didMove(to view: SKView) {
        for i in 1...10 {
            let recognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight))
            recognizer.direction = .right
            recognizer.numberOfTouchesRequired = i
            self.view?.addGestureRecognizer(recognizer)
        }
    }
    
    func swipedRight(sender: UISwipeGestureRecognizer) {
        print(sender.numberOfTouches)
    }
}
