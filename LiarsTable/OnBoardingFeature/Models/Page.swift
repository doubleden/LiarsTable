//
//  Page.swift
//  LiarsTable
//
//  Created by Denis Denisov on 16/7/25.
//

import Foundation

enum Page {
    case first
    case second
    case third
    
    var title: String {
        switch self {
        case .first: "First"
        case .second: "Second"
        case .third: "Third"
        }
    }
    
    var buttonTitle: String {
        switch self {
        case .first: "Next"
        case .second: "Next"
        case .third: "Done"
        }
    }
}
