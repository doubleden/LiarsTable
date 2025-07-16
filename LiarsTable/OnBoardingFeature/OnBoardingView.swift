//
//  OnBoardingView.swift
//

import SwiftUI
import ComposableArchitecture

struct OnBoardingView: View {
    let store: StoreOf<OnBoardingFeature>
    
    var body: some View {
        ZStack {
            switch store.currentPage {
            case .first:
                PageView(
                    title: "First Page",
                    buttonTitle: "Next",
                    action: { store.send(.moveToNextPage) }
                )
            case .second:
                PageView(
                    title: "Second Page",
                    buttonTitle: "Next",
                    action: { store.send(.moveToNextPage) }
                )
            case .third:
                PageView(
                    title: "Third Page",
                    buttonTitle: "Complete",
                    action: { store.send(.moveToNextPage) }
                )
            }
        }
        .clipped()
        .animation(.linear, value: store.currentPage)
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(Color.gray.opacity(0.2))
    }
}

fileprivate struct PageView: View {
    let title: String
    let buttonTitle: String
    let action: () -> Void
    var body: some View {
        VStack {
            Text("OnBoardingView")
            Text(title)
            
            Button(buttonTitle) {
                action()
            }
            .font(.callout)
            .foregroundStyle(.white)
            .padding(.all, 12)
            .background(.gray)
            .clipShape(Capsule())
            
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .transition(
            .asymmetric(
                insertion: .move(edge: .trailing),
                removal: .move(edge: .leading)
            )
        )
    }
}

#Preview {
    OnBoardingView(
        store: Store(initialState: OnBoardingFeature.State()) {
            OnBoardingFeature()
        }
    )
}
