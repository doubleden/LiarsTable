
import CommonModels

public typealias BuildDockCallback = @Sendable (GamePlayersCount) -> GameDeck
public typealias CardsCountCallback = @Sendable (GamePlayersCount) -> Int

public struct DeckBuilder: Sendable {
    public var buildDeck: BuildDockCallback
    
    public static let usualSuitsCount: CardsCountCallback = { playersCount in
        switch playersCount {
        case .two: 3
        case .three: 5
        case .four: 6
        case .five: 8
        }
    }
    
    public static let jokerSuitsCount: CardsCountCallback = { playersCount in
        switch playersCount {
        case .two: 1
        case .three: 2
        case .four: 2
        case .five: 3
        }
    }
    
    public init(
        buildDock: @escaping BuildDockCallback,
    ) {
        self.buildDeck = buildDock
    }
}
