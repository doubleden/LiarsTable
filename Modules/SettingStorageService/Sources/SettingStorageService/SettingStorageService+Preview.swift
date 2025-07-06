//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 1/7/25.
//
fileprivate final class Mock: @unchecked Sendable {
    static let shared = Mock()
    
    var isCompleted = false
    
    private init() {}
}

extension SettingStorageService {
    public static let preview = Self(
        checkOnBoardingState: {
            return Mock.shared.isCompleted
        },
        setOnBoardingState: { newValue in
            Mock.shared.isCompleted = newValue
        }
    )
}
