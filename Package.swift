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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.5/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "9bb569b12b0bd22b36774702b0a5bb715b0e5041c0444a01ee4183ace1219458"
        ),
    ]
)
