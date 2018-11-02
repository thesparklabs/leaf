// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Leaf",
    products: [
        .library(name: "Leaf", targets: ["Leaf"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", from: "3.4.1"),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0"),

        // 📄 Easy-to-use foundation for building powerful templating languages in Swift.
        .package(url: "https://github.com/vapor/template-kit.git", from: "1.1.0"),
    ],
    targets: [
        .target(name: "Leaf", dependencies: ["Async", "Bits", "COperatingSystem", "Service", "TemplateKit"]),
        .testTarget(name: "LeafTests", dependencies: ["Leaf"]),
    ]
)
