// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SettingStorageService",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "SettingStorageService",
            targets: ["SettingStorageService"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.9.2")
    ],
    targets: [
        .target(
            name: "SettingStorageService",
            dependencies: [.product (name:"Dependencies", package: "swift-dependencies")]
        ),
        .target(
            name: "SettingStorageServiceLive",
            dependencies: [
                .product (name:"Dependencies", package: "swift-dependencies"),
                "SettingStorageService"
            ]
        )
    ]
)
