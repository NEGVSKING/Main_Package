// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "E-ROK-Package",
    platforms: [.iOS(.v18)],  // Aligné Xcode 26 : iOS 18+ pour SwiftUI 6+ / VisionOS support
    products: [
        .library(name: "EROKUI", targets: ["EROKUI"]),
        .library(name: "EROKCore", targets: ["EROKCore"]),
        .library(name: "EROKViews", targets: ["EROKViews"]),
        .library(name: "SHIFT", targets: ["SHIFT"]),
        .library(name: "MYMECA", targets: ["MYMECA"]),
        .library(name: "PROFILES", targets: ["PROFILES"])
    ],
    dependencies: [
        // Firebase supprimé – on gère auth/Firestore directement dans l'app SHIFT
    ],
    targets: [
        .target(
            name: "EROKUI",
            dependencies: [],
            path: "Sources/EROKUI",
            resources: [.process("Resources")]  // Bundling : Sources/EROKUI/Resources/"E-ROK_CLUB_TEXT.png"
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
            dependencies: ["EROKUI", "EROKCore", "EROKViews","SHIFT", "MYMECA"],
            path: "Sources/PROFILES"
        )
    ]
)
