//
//  AuthorizedView.swift
//

import SwiftUI
import ComposableArchitecture

struct AuthorizedView: View {
    @Bindable var store: StoreOf<AuthorizedFeature>
    
    var body: some View {
        TabView(selection: $store.selectedTab.sending(\.selectTab)) {
            LobbyView(store: Store(initialState: LobbyFeature.State()) {
                LobbyFeature()
            })
            .tabItem { Label("Lobby", systemImage: "house") }
            .tag(Tab.lobby)
            
            OptionsView(store: Store(initialState: OptionsFeature.State()) {
                OptionsFeature()
            })
            .tabItem { Label("Options", systemImage: "gear") }
            .tag(Tab.options)
        }
    }
}

#Preview {
    AuthorizedView(
        store: Store(initialState: AuthorizedFeature.State()) {
            AuthorizedFeature()
        }
    )
}
