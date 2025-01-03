// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Travel",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Travel",
            targets: ["Travel"]),
        .library(
            name: "TravelService",
            targets: ["TravelService"]),
    ],
    dependencies: [
        .package(path: "../Store"),
    ],

    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Travel",
            dependencies: ["TravelService",
                           .product(name: "StoreService", package: "Store")
                          ]),
        .target(
            name: "TravelService"),

    ]
)
