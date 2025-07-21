//
//  File.swift
//  DeckBuilder
//
//  Created by Denis Denisov on 21/7/25.
//

import CommonModels

extension DeckBuilder {
    public static let live = Self(
        buildDock: { playersCount in
            let usualSuits = usualSuitsCount(playersCount)
            let joker = jokerSuitsCount(playersCount)
            
            var totalDeck: [Card] = []
            totalDeck.append(contentsOf: Card.buildCard(rank: .ace, count: usualSuits))
            totalDeck.append(contentsOf: Card.buildCard(rank: .king, count: usualSuits))
            totalDeck.append(contentsOf: Card.buildCard(rank: .queen, count: usualSuits))
            totalDeck.append(contentsOf: Card.buildCard(rank: .jack, count: usualSuits))
            totalDeck.append(contentsOf: Card.buildCard(rank: .joker, count: joker))
            totalDeck.shuffle()
            
            return GameDeck(cards: totalDeck)
        }
    )
}
