//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

import Foundation
import Dependencies
import SettingStorageService

extension SettingStorageService: DependencyKey {
    static public var liveValue: Self {
        Self(
            checkOnBoardingState: {
                UserDefaults.standard.bool(forKey: SettingStorageService.keyName)
            },
            setOnBoardingState: { newValue in
                UserDefaults.standard.set(newValue, forKey: SettingStorageService.keyName)
            }
        )
    }
}
