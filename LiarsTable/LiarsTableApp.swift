//
//  LiarsTableApp.swift
//  LiarsTable
//
//  Created by Denis Denisov on 25/6/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct LiarsTableApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(store: Store(initialState: AppFeature.State()) {
                AppFeature()
            })
        }
    }
}
