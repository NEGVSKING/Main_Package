// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "E-ROK-Package",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "EROKUI", targets: ["EROKUI"]),
        .library(name: "EROKCore", targets: ["EROKCore"]),
        .library(name: "EROKViews", targets: ["EROKViews"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EROKUI",
            dependencies: [],
            path: "Sources/EROKUI"
        ),
        .target(
            name: "EROKCore",
            dependencies: [],
            path: "Sources/EROKCore"
        ),
        .target(
            name: "EROKViews",
            dependencies: ["EROKUI", "EROKCore"],
            path: "Sources/EROKViews"
        )
    ]
)
