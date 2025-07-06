//
//  OnBoardingView.swift
//

import SwiftUI
import ComposableArchitecture

struct OnBoardingView: View {
    let store: StoreOf<OnBoardingFeature>
    
    var body: some View {
        VStack {
            Text("OnBoardingView")
            Button("Done") {
                store.send(.doneOnBoarding)
            }
        }
    }
}

#Preview {
    OnBoardingView(
        store: Store(initialState: OnBoardingFeature.State()) {
            OnBoardingFeature()
        }
    )
}
