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
    private let initialStateWithUncompletedOnBoarding = AppFeature.State(isOnBoardingCompleted: false)
    
    func testOnBoardingChangeValueAfterLaunch() async {
        let store = TestStore(initialState: initialStateWithUncompletedOnBoarding) {
            AppFeature()
        } withDependencies: {
            $0.settingStorageService = SettingStorageService(checkOnBoardingState: {
                print("print withDepend")
                return true
            }, setOnBoardingState: { _ in
                
            })
        }
        
        await store.send(.checkOnBoardingCompletion) {
            $0.isOnBoardingCompleted = true
        }
    }
}
