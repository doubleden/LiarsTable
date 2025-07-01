//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 1/7/25.
//

import Foundation

extension SettingStorageService {
    public static let live = Self(
        checkOnBoardingState: {
            UserDefaults.standard.bool(forKey: SettingStorageService.keyName)
        },
        setOnBoardingState: { newValue in
            UserDefaults.standard.set(newValue, forKey: SettingStorageService.keyName)
        }
    )
}
