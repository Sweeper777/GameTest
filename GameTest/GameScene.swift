import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    var button: SKSpriteNode!
    var buttonLabel: SKLabelNode!
    var ball1: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        button = childNode(withName: "newGameButton") as! SKSpriteNode
        buttonLabel = button.childNode(withName: "buttonLabel") as! SKLabelNode
        ball1 = childNode(withName: "ball") as! SKSpriteNode
        button.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }
    
    func myFunction() {
        let ball1Degrees = 315
        if ball1Degrees < 90 {
            ball1.physicsBody?.velocity = CGVector(dx: 1, dy: tan(Double(ball1Degrees) * (.pi / 180)))
        }
        if ball1Degrees == 90 {
            ball1.physicsBody?.velocity = CGVector(dx: 1, dy: 0)
        }
        if ball1Degrees > 90 && ball1Degrees <= 180 {
            ball1.physicsBody?.velocity = CGVector(dx: -1, dy: tan(Double(180 - ball1Degrees) * (.pi / 180)))
        }
        if ball1Degrees > 180 && ball1Degrees <= 270 {
            ball1.physicsBody?.velocity = CGVector(dx: -1, dy: -tan(Double(ball1Degrees - 180) * (.pi / 180)))
        }
        if ball1Degrees > 270 && ball1Degrees <= 360 {
            ball1.physicsBody?.velocity = CGVector(dx: 100, dy: -tan(Double(360 - ball1Degrees) * (.pi / 180)) * 100)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myFunction()
    }
}

extension SKSpriteNode {
    func move(in direction: CGFloat) {
        func radians(_ x: CGFloat) -> CGFloat {
            return x * CGFloat(M_PI) / 180
        }
        
        if direction < 90 && direction > 0 {
            let dy = tan(radians(direction))
            self.run(SKAction.moveBy(x: 200, y: dy * 200, duration: 3))
        } else if direction < 180 {
            let newDirection = 180 - direction
            let dy = tan(radians(newDirection))
            self.run(SKAction.moveBy(x: -200, y: dy * 200, duration: 3))
        } else if direction < 270 {
            let newDirection = direction - 180
            let dy = -tan(radians(newDirection))
            self.run(SKAction.moveBy(x: -200, y: dy * 200, duration: 3))
        } else if direction < 360 {
            let newDirection = 360 - direction
            let dy = -tan(radians(newDirection))
            self.run(SKAction.moveBy(x: 200, y: dy * 200, duration: 3))
        }
    }
}
