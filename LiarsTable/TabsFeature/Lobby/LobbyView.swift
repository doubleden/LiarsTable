//
//  LobbyView.swift
//
// Created by Denis Denisov on 16/7/25
//

import SwiftUI
import ComposableArchitecture

struct LobbyView: View {
    let store: StoreOf<LobbyFeature>
    
    var body: some View {
        VStack {
            Text("LobbyView")
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
