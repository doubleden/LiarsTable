//
//  OptionsView.swift
//
// Created by Denis Denisov on 16/7/25
//

import SwiftUI
import ComposableArchitecture

struct OptionsView: View {
    let store: StoreOf<OptionsFeature>
    
    var body: some View {
        VStack {
            Text("OptionsView")
        }
    }
}

#Preview {
    OptionsView(
        store: Store(initialState: OptionsFeature.State()) {
            OptionsFeature()
        }
    )
}
