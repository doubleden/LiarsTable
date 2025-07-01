//
//  File.swift
//  SettingStorageService
//
//  Created by Denis Denisov on 1/7/25.
//

import Dependencies

private enum SettingStorageServiceKey: DependencyKey {
    static let liveValue = SettingStorageService.live
    static let previewValue = SettingStorageService.preview
    static let testValue = SettingStorageService.test
}

public extension DependencyValues {
    var settingStorageService: SettingStorageService {
        get { self[SettingStorageServiceKey.self] }
        set { self[SettingStorageServiceKey.self] = newValue }
    }
}
