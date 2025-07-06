//
//  AppView.swift
//

import SwiftUI
import ComposableArchitecture
import SettingStorageService

struct AppView: View {
    @Bindable var store: StoreOf<AppFeature>
    
    var body: some View {
        VStack {
            switch store.state.destination {
            case .authorized:
                if let store = store.scope(
                    state: \.destination?.authorized,
                    action: \.destinationAction.authorized
                ) {
                    AuthorizedView(store: store)
                }
            case .onBoarding:
                if let store = store.scope(
                    state: \.destination?.onBoarding,
                    action: \.destinationAction.onBoarding
                ) {
                    OnBoardingView(store: store)
                }
            default:
                EmptyView()
            }
        }
        .onAppear { store.send(.checkOnBoardingCompletion) }
    }
}

#Preview {
    AppView(
        store: Store(
            initialState: AppFeature.State(),
            reducer: { AppFeature() })
    )
}
