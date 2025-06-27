//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

public struct SettingStorageService: Sendable {
    public static let keyName = "onBoardingState_flag"
    
    public var checkOnBoardingState: CheckOnBoardingCallback
    public var setOnBoardingState: SetOnBoardingCallback
    
    public init(
        checkOnBoardingState: @escaping CheckOnBoardingCallback,
        setOnBoardingState: @escaping SetOnBoardingCallback
    ) {
        self.checkOnBoardingState = checkOnBoardingState
        self.setOnBoardingState = setOnBoardingState
    }
}
