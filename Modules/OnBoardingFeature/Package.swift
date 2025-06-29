// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnBoardingFeature",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "OnBoardingFeature",
            targets: ["OnBoardingFeature"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.20.2")
    ],
    targets: [
        .target(
            name: "OnBoardingFeature",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),

    ]
)
