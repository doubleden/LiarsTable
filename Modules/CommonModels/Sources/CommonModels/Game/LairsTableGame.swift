//
//  File.swift
//  CommonModels
//
//  Created by Denis Denisov on 21/7/25.
//

import Foundation

public protocol LairsTableGame: Actor {
    var state: GameState { get }
    var gamePlayersCount: GamePlayersCount { get }
    var gameMainRank: Card.Rank? { get }
}
