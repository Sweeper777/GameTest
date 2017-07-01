import SpriteKit

class MySprite: SKSpriteNode {
    init() {
        let texture = SKTexture(image: #imageLiteral(resourceName: "Spaceship"))
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        let texture = SKTexture(imageNamed: "Spaceship")
        super.init(texture: texture, color: .clear, size: texture.size())
    }
    
    
}
