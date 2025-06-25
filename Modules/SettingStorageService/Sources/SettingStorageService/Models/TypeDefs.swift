//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

import Foundation

public typealias OnBoardingCheckCallback = @Sendable () -> Bool
public typealias OnBoardingSetCallback = @Sendable (Bool) -> Void
