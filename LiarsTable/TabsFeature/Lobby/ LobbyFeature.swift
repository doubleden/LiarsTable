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
        @Presents var destination: LobbyDestination.State?
    }
    
    enum Action: ViewAction {
        case showLocalGame
        case showOnlineGame
        case destinationAction(PresentationAction<LobbyDestination.Action>)
        case view(View)
        
        @CasePathable
        enum View {
            case didTapOnLocalGameButton
            case didTapOnOnlineGameButton
        }
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .showLocalGame:
                state.destination = .localGame(LocalGameFeature.State())
                return .none
            case .showOnlineGame:
                state.destination = .onlineGame(OnlineGameFeature.State())
                return .none
            case .view(.didTapOnLocalGameButton):
                return .send(.showLocalGame)
            case .view(.didTapOnOnlineGameButton):
                return .send(.showOnlineGame)
            default:
                return .none
            }
        }
    }
}

// MARK: - AppFeatureDestination
extension LobbyFeature {
    @Reducer
    enum LobbyDestination {
        case localGame(LocalGameFeature)
        case onlineGame(OnlineGameFeature)
    }
}
