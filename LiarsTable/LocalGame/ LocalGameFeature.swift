//
//  LocalGameStore.swift
//
//  Created by Denis Denisov on 17/7/25
//

import Foundation
import ComposableArchitecture

@Reducer
struct LocalGameFeature {
    
    @ObservableState
    struct State {
        
    }
    
    enum Action {
        case action
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
    }
}
