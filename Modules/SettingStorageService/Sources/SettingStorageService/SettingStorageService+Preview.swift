//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 1/7/25.
//

extension SettingStorageService {
    public static let preview = Self(
        checkOnBoardingState: {
            return true
        },
        setOnBoardingState: { _ in
            
        }
    )
}
