//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

public typealias CheckOnBoardingCallback = @Sendable () -> Bool
public typealias SetOnBoardingCallback = @Sendable (Bool) -> Void

public struct SettingStorageService: Sendable {
    public static let keyName = "onBoardingState_flag"
    
    public var checkIsOnBoardingState: CheckOnBoardingCallback
    public var setOnBoardingState: SetOnBoardingCallback
    
    public init(
        checkOnBoardingState: @escaping CheckOnBoardingCallback,
        setOnBoardingState: @escaping SetOnBoardingCallback
    ) {
        self.checkIsOnBoardingState = checkOnBoardingState
        self.setOnBoardingState = setOnBoardingState
    }
}
