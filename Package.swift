// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBTSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "OnMobileRBTSDK_PRODUCT",
            targets: ["OnMobileRBTSDK_PRODUCT"]),
        .library(
            name: "OnMobileRBTSDK_VIL",
            targets: ["OnMobileRBTSDK_VIL"]),
        .library(
            name: "OnMobileRBTSDK_MYGP",
            targets: ["OnMobileRBTSDK_MYGP"]),
        .library(
            name: "OnMobileRBTSDK_DU",
            targets: ["OnMobileRBTSDK_DU"]),
        .library(
            name: "OnMobileRBTSDK_ROBI",
            targets: ["OnMobileRBTSDK_ROBI"]),
        .library(
            name: "OnMobileRBTSDK_AIRTEL",
            targets: ["OnMobileRBTSDK_AIRTEL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileRBTSDK_PRODUCT",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.11/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "47c991a5dbd3d46ab3d18ee79fbe1d2174ad6cbb3d3dd851787bf4e8fc0bac57"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.11/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "30d111ac7a65c9f484ba2b800e39a46867fc5ff678007c3e369d59c0b867a121"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.11/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "2d14ed063b38dfe58b17ead30da13e3bc5e8f41aaf787d83f5b49aaa33a8c001"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.11/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "7f5d5023dde10a5f4b5ef64d7472495731e09b4581b0557fda9d0c6a3c73a1fe"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.11/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "e1ca4aaa2d98673f6d0a1001b738a1232a1991bd228aa2969d52dac5a9b319a3"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.11/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "b318f52fff1de10431454edae367bdea8dd685d274ff4839b9dc22c949ecb57e"
        ),
    ]
)
