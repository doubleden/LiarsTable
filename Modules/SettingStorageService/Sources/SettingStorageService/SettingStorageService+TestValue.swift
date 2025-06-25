//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 25/6/25.
//

import Dependencies

extension SettingStorageService: TestDependencyKey {
    public static var testValue: Self {
        Self {
            return true
        }
    }
}
