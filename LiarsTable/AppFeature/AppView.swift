//
//  AppView.swift
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppFeature>
    
    var body: some View {
        VStack {
            Text("AppView")
        }
    }
}

#Preview {
    AppView(
        store: Store(initialState: AppFeature.State()) {
            AppFeature()
        }
    )
}
