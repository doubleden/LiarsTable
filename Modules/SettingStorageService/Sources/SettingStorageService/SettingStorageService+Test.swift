//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 1/7/25.
//

extension SettingStorageService {
    public static let test = Self(
        checkOnBoardingState: {
            print("print did test")
            return false
        },
        setOnBoardingState: { _ in }
    )
}
