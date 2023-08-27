// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", exact: "1.3.18"),
        .package(url: "https://github.com/layoutBox/PinLayout.git", exact: "1.10.4")
    ],
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: [
                "FlexLayout",
                "PinLayout"
            ],cSettings: [
                .define("FLEXLAYOUT_SWIFT_PACKAGE")
            ],
            cxxSettings: [
                .define("FLEXLAYOUT_SWIFT_PACKAGE"),
            ],
            swiftSettings: [
                .define("FLEXLAYOUT_SWIFT_PACKAGE")
            ])
    ]
)
