//
//  File.swift
//  CommonModels
//
//  Created by Denis Denisov on 21/7/25.
//

import Foundation

public  struct GameDeck {
    public var cards: [Card]
    
    public init(cards: [Card]) {
        self.cards = cards
    }
}
