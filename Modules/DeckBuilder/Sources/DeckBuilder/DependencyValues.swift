//
//  File.swift
//  DeckBuilder
//
//  Created by Denis Denisov on 21/7/25.
//

import Dependencies

private enum DeckBuilderKey: DependencyKey {
    static let liveValue = DeckBuilder.live
}

public extension DependencyValues {
    var deckBuilder: DeckBuilder {
        get { self[DeckBuilderKey.self] }
        set { self[DeckBuilderKey.self] = newValue }
    }
}
