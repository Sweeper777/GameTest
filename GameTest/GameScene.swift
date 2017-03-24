import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    
    
    var bg = SKSpriteNode()
    
    
    
    func runBgActions(bgTextureName: String) {
        let bgTexture = SKTexture(imageNamed: bgTextureName)
        bg.texture = bgTexture
        bg.position = CGPoint(x: self.frame.minX, y: self.frame.minY)
        let moveBGanimation = SKAction.move(by: CGVector(dx: 0, dy: -(bgTexture.size().height - self.frame.height)), duration: 4)
        let shiftBGAnimation = SKAction.move(by: CGVector(dx: 0, dy: bgTexture.size().height - self.frame.height), duration: 0)
        let moveBGForever = SKAction.repeatForever(SKAction.sequence([moveBGanimation, shiftBGAnimation]))
        bg.removeAllActions()
        bg.run(moveBGForever)
    }
    
    override func didMove(to view: SKView) {
        
        
        var i: CGFloat = 0
        
        bg = SKSpriteNode(imageNamed: "bg1") // replace this with your first background's texture name
        bg.position = CGPoint(x: self.frame.minX, y: self.frame.minY)
        bg.anchorPoint = CGPoint(x: 0, y: 0)
        bg.size.width = self.frame.width
        bg.zPosition = -2
        self.addChild(bg)
        
        i += 1
        
        
        
        let bg1Action = SKAction.run { self.runBgActions(bgTextureName: "bg1") }
        let bg2Action = SKAction.run { self.runBgActions(bgTextureName: "bg2") }
        let bg3Action = SKAction.run { self.runBgActions(bgTextureName: "bg3") }
        let waitAction = SKAction.wait(forDuration: 10)
        let sequence = SKAction.sequence([bg1Action, waitAction, bg2Action, waitAction, bg3Action, waitAction])
        let repeatForeverAction = SKAction.repeatForever(sequence)
        self.run(repeatForeverAction)
    }
}
