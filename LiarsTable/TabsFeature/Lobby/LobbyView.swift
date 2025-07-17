//
//  LobbyView.swift
//
// Created by Denis Denisov on 16/7/25
//

import SwiftUI
import ComposableArchitecture

@ViewAction(for: LobbyFeature.self)
struct LobbyView: View {
    @Bindable var store: StoreOf<LobbyFeature>
    
    var body: some View {
        VStack {
            Group {
                Button("Local Game") { send(.didTapOnLocalGameButton) }
                Button("Online Game") { send(.didTapOnOnlineGameButton) }
            }
            .buttonStyle(.borderedProminent)
        }
        .fullScreenCover(item: $store.scope(state: \.destination, action: \.destinationAction)) { store in
            switch store.case {
            case .localGame(let store):
                LocalGameView(store: store)
            case .onlineGame(let store):
                OnlineGameView(store: store)
            }
        }
    }
}

#Preview {
    LobbyView(
        store: Store(initialState: LobbyFeature.State()) {
            LobbyFeature()
        }
    )
}
