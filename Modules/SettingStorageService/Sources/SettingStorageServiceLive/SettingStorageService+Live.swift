//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

import Foundation
import Dependencies
import SettingStorageService

public enum SettingStorageServiceKey: DependencyKey {
    static public let liveValue = SettingStorageService(
        checkOnBoardingState: {
            UserDefaults.standard.bool(forKey: SettingStorageService.keyName)
        },
        setOnBoardingState: { newValue in
            UserDefaults.standard.set(newValue, forKey: SettingStorageService.keyName)
        }
    )
    
    static public let testValue = SettingStorageService(
        checkOnBoardingState: {
            print("print did test")
            return true
        },
        setOnBoardingState: { _ in
            
        }
    )
}

public extension DependencyValues {
    var settingStorageService: SettingStorageService {
        get { self[SettingStorageServiceKey.self] }
        set { self[SettingStorageServiceKey.self] = newValue }
    }
}
