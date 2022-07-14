// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBTSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "OnMobileRBTSDK_VIL",
            targets: ["OnMobileRBTSDK_VIL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.2/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "5f386f9a8fd883585d3defb82bb38fbfd1855853727f053f44151809d21e3c8b"
        ),
    ]
)
