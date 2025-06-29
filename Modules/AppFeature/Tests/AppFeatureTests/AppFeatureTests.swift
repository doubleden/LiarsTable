//
//  File.swift
//  AppFeature
//
//  Created by Denis Denisov on 25/6/25.
//

import ComposableArchitecture
import XCTest
import SettingStorageService

@testable import AppFeature
import OnBoardingFeature
import AuthorizedFeature

@MainActor
final class AppFeatureTests: XCTestCase {
    
    func testShowOnBoardingIfItWasNotCompleted() async {
        let initialStateWithUncompletedOnBoarding = AppFeature.State()
        
        let store = TestStore(initialState: initialStateWithUncompletedOnBoarding) {
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
        let initialStateWithUncompletedOnBoarding = AppFeature.State()
        
        let store = TestStore(initialState: initialStateWithUncompletedOnBoarding) {
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
