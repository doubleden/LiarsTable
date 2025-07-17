//
//  LocalGameView.swift
//
// Created by Denis Denisov on 17/7/25
//

import SwiftUI
import ComposableArchitecture

struct LocalGameView: View {
    let store: StoreOf<LocalGameFeature>
    
    var body: some View {
        VStack {
            Text("LocalGameView")
        }
    }
}

#Preview {
    LocalGameView(
        store: Store(initialState: LocalGameFeature.State()) {
            LocalGameFeature()
        }
    )
}
