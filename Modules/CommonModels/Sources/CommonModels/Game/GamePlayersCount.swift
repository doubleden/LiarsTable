//
//  File.swift
//  CommonModels
//
//  Created by Denis Denisov on 21/7/25.
//

import Foundation


public enum GamePlayersCount {
    case two
    case three
    case four
    case five
    
    public var number: Int {
        switch self {
        case .two: 2
        case .three: 3
        case .four: 4
        case .five: 5
        }
    }
}
