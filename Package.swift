// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RZExtensions",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "RZExtensions",
            targets: ["RZExtensions"]),
    ],
    targets: [
        .target(
            name: "RZExtensions",
            dependencies: []),
        .testTarget(
            name: "RZExtensionsTests",
            dependencies: ["RZExtensions"]),
    ]
)
