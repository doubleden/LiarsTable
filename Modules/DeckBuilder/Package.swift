// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeckBuilder",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "DeckBuilder",
            targets: ["DeckBuilder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.9.2"),
        .package(path: "../CommonModels")
    ],
    targets: [
        .target(
            name: "DeckBuilder",
            dependencies: [
                .product(name: "CommonModels", package: "CommonModels")
            ]
        ),

    ]
)
