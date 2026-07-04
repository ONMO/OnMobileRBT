// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBTSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "OnMobileRBTSDK_DU",
            targets: ["OnMobileRBTSDK_DU"]),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.20/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "3af81607ff0591fa3a1a6ef929c05d193867088938d61bf9a9c8d12a25d84a43"
        )
    ]
)
