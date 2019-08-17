// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dequer",
    // platforms: [.iOS("9.3")],
    products: [
        .library(
            name: "Dequer",
            targets: ["Dequer"]),
    ],
    targets: [
        .target(
            name: "Dequer",
            path: "Source"),

    ]
)

