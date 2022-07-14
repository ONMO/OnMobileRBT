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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.2/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "48653af2067d1c6953bc4f3030d02533912e9b4c30c455ba8dc569c021f8fd98"
        ),
    ]
)
