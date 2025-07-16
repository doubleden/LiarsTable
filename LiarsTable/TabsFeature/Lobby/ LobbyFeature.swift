//
//  LobbyStore.swift
//
//  Created by Denis Denisov on 16/7/25
//

import Foundation
import ComposableArchitecture

@Reducer
struct LobbyFeature {
    
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
