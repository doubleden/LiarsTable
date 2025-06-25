//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

import Foundation

public typealias CheckOnBoardingCallback = @Sendable () -> Bool
public typealias SetOnBoardingCallback = @Sendable (Bool) -> Void
