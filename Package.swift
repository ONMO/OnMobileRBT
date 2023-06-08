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
        .library(
            name: "OnMobileRBTSDK_ROBI",
            targets: ["OnMobileRBTSDK_ROBI"]),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.6/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "40541c01f32396ddc2c5938c612678498f449a58a45f1f15b8bcf9ce5dc22015"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.6/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "2cd7986f0cbcb79873d2ce7d2fe4cc7183f065fd14a5403a5db49a65ee015e4f"
        ),
    ]
)
