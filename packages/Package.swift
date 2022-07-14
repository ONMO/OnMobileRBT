// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBTSDK",
    platforms: [.iOS(.v10)],
    dependencies: [
        .package(url: "https://github.com/ONMO/OnMobileRBT/tree/packages/vil", exact: "3.1.2"),
        .package(url: "https://github.com/ONMO/OnMobileRBT/tree/packages/du", exact: "3.1.2"),
    ]
)
