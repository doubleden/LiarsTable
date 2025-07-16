//
//  OnBoardingView.swift
//

import SwiftUI
import ComposableArchitecture

struct OnBoardingView: View {
    let store: StoreOf<OnBoardingFeature>
    
    var body: some View {
        ZStack {
            VStack {
                Text("OnBoardingView")
                Text(store.currentPage.title)
                Button(store.currentPage.buttonTitle) {
                    store.send(.moveToNextPage)
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    OnBoardingView(
        store: Store(initialState: OnBoardingFeature.State()) {
            OnBoardingFeature()
        }
    )
}
