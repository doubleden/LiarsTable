//
//  File.swift
//  CommonModels
//
//  Created by Denis Denisov on 21/7/25.
//

import Foundation

public protocol GamePlayer {
    var playerCards: [Card] { get }
    func dealCardsToPlayer(_ cards: [Card])
}
