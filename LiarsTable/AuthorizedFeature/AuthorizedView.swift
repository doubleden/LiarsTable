//
//  AuthorizedView.swift
//

import SwiftUI
import ComposableArchitecture

struct AuthorizedView: View {
    let store: StoreOf<AuthorizedFeature>
    
    var body: some View {
        VStack {
            Text("AuthorizedView")
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
