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

@MainActor
final class AppFeatureTests: XCTestCase {
    
    func testOnBoardingChangeValueAfterLaunch() async {
        let initialStateWithUncompletedOnBoarding = AppFeature.State(isOnBoardingCompleted: false)
        let store = TestStore(initialState: initialStateWithUncompletedOnBoarding) {
            AppFeature()
        } withDependencies: {
            $0.settingStorageService.checkOnBoardingState = { true }
        }
        
        await store.send(.checkOnBoardingCompletion) {
            $0.isOnBoardingCompleted = true
        }
    }
    
    func testSetValueAfterCompletedOnBoarding() async {
        final class TestContainer: @unchecked Sendable {
            var userDefaultsFlag = false
        }
        
        let container = TestContainer()
        let initialStateWithUncompletedOnBoarding = AppFeature.State(isOnBoardingCompleted: false)
        
        let store = TestStore(initialState: initialStateWithUncompletedOnBoarding) {
            AppFeature()
        } withDependencies: {
            $0.settingStorageService.setOnBoardingState =  { newValue in
                container.userDefaultsFlag = newValue
            }
        }
        
        await store.send(.setOnBoardingCompletion(true)) {
            $0.isOnBoardingCompleted = true
        }
        
        XCTAssertEqual(container.userDefaultsFlag, true)
    }
}
