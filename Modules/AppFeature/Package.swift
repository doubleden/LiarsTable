// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppFeature",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "AppFeature", targets: ["AppFeature"]),
    ],
    dependencies: [
        .package(path: "../SettingStorageService"),
        .package(path: "../OnBoardingFeature"),
        .package(path: "../AuthorizedFeature"),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.20.2")
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "SettingStorageServiceKey", package: "SettingStorageService"),
                .product(name: "OnBoardingFeature", package: "OnBoardingFeature"),
                .product(name: "AuthorizedFeature", package: "AuthorizedFeature")
            ]
        ),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: [
                "AppFeature",
                .product(name: "SettingStorageService", package: "SettingStorageService")
            ]
        )
    ]
)
