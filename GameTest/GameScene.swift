import SpriteKit
import GameplayKit
import NORLabelNode

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.addChild(
            SKLayer(inside: self, withLabels: ["Welcome", "Hello", "Bye", "Help"])
        )
    }
    
    func test() {
        print(self.action(forKey: "myAction") == nil ? "Nil" : "Non-nil")
    }
}

class SKLayer: SKSpriteNode {
    
    init(inside scene: SKScene, withLabels texts: [String]) {
        super.init(texture: nil, color: .clear, size: scene.size)
        
        self.anchorPoint = CGPoint(x: 0.5, y: 1)
        converted(texts).forEach(self.addChild(_:))
        
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.position = .zero
    }
    
    private func converted(_ text: [String]) -> [SKNode] {
        
        var arr = [SKLabelNode]()
        
        text.forEach {
            arr.append(SKLabelNode(text: $0))
        }
        
        for i in 0..<arr.count {
            arr[i].position.y = CGFloat(i) * arr[0].frame.height
        }
        
        return arr
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}

extension SKLabelNode {
    public convenience init(withTitle title: String) {
        self.init()
        self.text = title
        self.fontName = "Savoye LET"
        self.fontSize = 288
        self.color = .white
    }
}
