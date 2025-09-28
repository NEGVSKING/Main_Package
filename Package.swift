// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "E-ROK-Package",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "EROKUI", targets: ["EROKUI"]),
        .library(name: "EROKCore", targets: ["EROKCore"]),
        .library(name: "EROKViews", targets: ["EROKViews"]),
        .library(name: "SHIFT", targets: ["SHIFT"]),
        .library(name: "MYMECA", targets: ["MYMECA"]),
        .library(name: "PROFILES", targets: ["PROFILES"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EROKUI",
            dependencies: [],
            path: "Sources/EROKUI",
            resources: [
                .process("Resources") // Inclut tous les fichiers dans Resources
            ]
        ),
        .target(
            name: "EROKCore",
            dependencies: ["MYMECA"],
            path: "Sources/EROKCore"
        ),
        .target(
            name: "EROKViews",
            dependencies: ["EROKUI", "EROKCore"],
            path: "Sources/EROKViews"
        ),
        .target(
            name: "SHIFT",
            dependencies: ["EROKUI", "EROKCore", "EROKViews"],
            path: "Sources/SHIFT"
        ),
        .target(
            name: "MYMECA",
            dependencies: [],
            path: "Sources/MYMECA"
        ),
        .target(
            name: "PROFILES",
            dependencies: ["EROKCore"],
            path: "Sources/PROFILES"
        )
    ]
)
