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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.14/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "63a3f07fc298b011451f02f45ef87ae9e10f39039e3467d69dc224bda9faa175"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.14/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "16951b3b911266fda4af90a9d7c14fd7e25437c9ee44207e3796ae75bc440c8e"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.14/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "4907b1f4684e0f5ba99f267ece3d1667fabc0da61de23e7675ac2ac20c6cf467"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.14/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "a7d9d0ac39656510ce2f4c87522bf4cf5716456fa6feb6467f8dd6878d1fac23"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.14/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "4b154eeea3f94d5b7803bf5e462cef95fa1c0f8ff6e70c910385147c2073872c"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.14/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "a78e481a5e9699dbe156526feb0f100a8a7c9f8daa748db40c2e1fb8808452a4"
        ),
    ]
)
