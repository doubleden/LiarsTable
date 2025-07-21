// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalGame",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "LocalGame",
            targets: ["LocalGame"]),
    ],
    dependencies: [
        .package(path: "../CommonModels")
    ],
    targets: [
        .target(
            name: "LocalGame",
            dependencies: [
                .product(name: "CommonModels", package: "CommonModels")
            ]
        ),

    ]
)
