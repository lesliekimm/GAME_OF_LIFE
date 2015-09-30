import UIKit

class Creature: CCSprite {
    // proerty observer - when we set it to alive, it's visible and not when it's dead
    var isAlive = false {
        didSet {
            self.visible = isAlive
        }
    }
    var livingNeighborsCount = 0
    
    // convenience tells compiler that a secod initializer will be called
    convenience override init() {
        self.init(imageNamed: "GameOfLifeAssets/Assets/bubble.png") // set image to bubble.png
        anchorPoint = CGPoint(x: 0, y: 0)
    }
}
