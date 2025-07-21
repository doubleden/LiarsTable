//
//  File.swift
//  CommonModels
//
//  Created by Denis Denisov on 21/7/25.
//

import Foundation

public struct Card {
    public let rank: Rank
    
    public static func buildCard(rank: Rank, count: Int) -> [Card] {
        (0..<count).map { _ in Card(rank: rank) }
    }
}

public extension Card {
    enum Rank: Int {
        case jack = 11
        case queen = 12
        case king = 13
        case ace = 14
        case joker = 0
    }
}
