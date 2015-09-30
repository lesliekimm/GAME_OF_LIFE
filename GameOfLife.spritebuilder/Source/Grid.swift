import UIKit

let GridRows = 8
let GridColumns = 10

class Grid: CCSprite {
    var totalAlive = 0
    var generation = 0
    
    var cellWidth: CGFloat = 0
    var cellHeight: CGFloat = 0
    var gridArray: [[Creature]]!
    
    override func onEnter() {
        super.onEnter()
        
        setUpGrid()
        
        userInteractionEnabled = true
    }
    
    func setUpGrid() {
        cellWidth = contentSize.width / CGFloat(GridColumns)
        cellHeight = contentSize.height / CGFloat(GridRows)
        
        gridArray = []
        
        for row in 0..<GridRows {
            gridArray.append([])
            
            for column in 0..<GridColumns {
                var creature = Creature()
                creature.position = CGPoint(x: cellWidth * CGFloat(column), y: cellHeight * CGFloat(row))
                addChild(creature)
                gridArray[row].append(creature)
                creature.isAlive = false
            }
        }
    }
}