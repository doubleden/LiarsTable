//
//  OnlineGameView.swift
//
// Created by Denis Denisov on 17/7/25
//

import SwiftUI
import ComposableArchitecture

struct OnlineGameView: View {
    let store: StoreOf<OnlineGameFeature>
    
    var body: some View {
        VStack {
            Text("OnlineGameView")
        }
    }
}

#Preview {
    OnlineGameView(
        store: Store(initialState: OnlineGameFeature.State()) {
            OnlineGameFeature()
        }
    )
}
