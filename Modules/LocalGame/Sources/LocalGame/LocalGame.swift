

import CommonModels
import Foundation
import DeckBuilder

public actor LocalGame: LairsTableGame {
    public var state: GameState = .preparing
    public var gamePlayersCount: GamePlayersCount = .five
    public var gameMainRank: CommonModels.Card.Rank?
    
    private var userPlayer: UserPlayer
    private var gamePlayers: [GamePlayer] = []
    var gameState: GameState { state }
    
    public init() {
        self.userPlayer = UserPlayer()
        
        let players = (0...gamePlayersCount.number - 1).map { _ in RandomAIPlayer() }
        gamePlayers = players + [userPlayer]
        
    }
    
    public func prepareGame(deckBuilder: DeckBuilder) {
        let deck = deckBuilder.buildDeck(gamePlayersCount)
        
        guard let rank = selectMainRank(deck: deck) else {
            print("error in deck")
            return
        }
        gameMainRank = rank
        state = .ready
        
    }
    
    public func selectMainRank(deck: GameDeck) -> Card.Rank? {
        deck.cards.randomElement()?.rank
    }
}
