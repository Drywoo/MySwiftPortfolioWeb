// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "MySwiftPortfolioWeb",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "MySwiftPortfolioWeb",
            targets: ["MySwiftPortfolioWeb"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "MySwiftPortfolioWeb",
            dependencies: ["Publish"]
        )
    ]
)
