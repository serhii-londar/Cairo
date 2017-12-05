// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cairo",
    products: [
        .library(
            name: "Cairo",
            targets: ["Cairo"]),
        ],
    dependencies: [
        .package(url: "https://github.com/PureSwift/CCairo.git", .branch("master")),
        .package(url: "https://github.com/PureSwift/CFontConfig.git", .branch("master")),
        .package(url: "https://github.com/PureSwift/CFreeType.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Cairo",
            dependencies: []),
        .testTarget(
            name: "CairoTests",
            dependencies: ["Cairo"]),
        ]
)
