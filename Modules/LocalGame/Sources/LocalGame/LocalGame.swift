

import CommonModels
import Foundation

public actor LocalGame: LairsTableGame {
    
    private var state: GameState = .preparing
    
    var gameState: GameState { state }
    
    func prepareGame() {
        
        state = .ready
    }
}
