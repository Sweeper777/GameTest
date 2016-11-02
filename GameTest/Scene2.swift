import SpriteKit

class Scene2: SKScene {

    override func didMove(to view: SKView) {
        let wait = SKAction.wait(forDuration: 3)
        let code = SKAction.run {
            let scene = GameScene(fileNamed: "GameScene")!
            view.presentScene(scene)
        }
        self.run(SKAction.sequence([wait, code]))
    }
}
