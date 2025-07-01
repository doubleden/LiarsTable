//
//  LiarsTableTests.swift
//  LiarsTableTests
//
//  Created by Denis Denisov on 1/7/25.
//

import ComposableArchitecture
import XCTest

@testable import LiarsTable

@MainActor
final class AppFeatureTests: XCTestCase {
    
    func testShowOnBoardingIfItWasNotCompleted() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        } withDependencies: {
            $0.settingStorageService.checkIsOnBoardingState = { false }
        }
        
        await store.send(.checkOnBoardingCompletion)
        
        await store.receive(\.navigateToOnBoarding) {
            $0.destination = .onBoarding(OnBoardingFeature.State())
        }
    }
    func testShowOnBoardingIfItWasCompleted() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        } withDependencies: {
            $0.settingStorageService.checkIsOnBoardingState = { true }
        }
        
        await store.send(.checkOnBoardingCompletion)
        
        await store.receive(\.navigateToAuthorized) {
            $0.destination = .authorized(AuthorizedFeature.State())
        }
    }
}
