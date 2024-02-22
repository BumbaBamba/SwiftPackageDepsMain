// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPackageDepsMain",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftPackageDepsMain",
            targets: ["SwiftPackageDepsMain"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BumbaBamba/SwiftPackageDeps1.git", from: "1.0.0"),
        .package(url: "https://github.com/BumbaBamba/SwiftPackageDeps2.git", exact: "2.0.0"),
        .package(url: "https://github.com/BumbaBamba/SwiftPackageDeps3.git", "1.0.0"..<"2.0.0"),
        // and one more variant -__________________________________________________<three dots>
        // .package(url: "https://github.com/BumbaBamba/SwiftPackageDeps3.git", "1.0.0"..."2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftPackageDepsMain"),
        .testTarget(
            name: "SwiftPackageDepsMainTests",
            dependencies: ["SwiftPackageDepsMain"]),
    ]
)
