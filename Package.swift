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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.17/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "fb2815f4b4fc5302a0b55830478b00fcd80943fcd2ed87220e880920dbdebeff"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.17/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "e140989389cc5ba6a08c62a5446f82d0ac516a9350d3615664db4a69355c7d03"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.17/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "338b7c0e89b7b87136dab5b31e60d0801443c7f8f77fdf1dbcfe9244062a25c0"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.17/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "dc6bab33e373e498bec7758b6672c8b041fc46487e45fe728728f68d0d02eb10"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.17/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "8b81deac8dbacece351126590cf5c9df6cbbba6c7484eedc93c90241861c0a07"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.17/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "bcb80ef07a9b256e515bf77052627062b6f582078c748b1099a1b0a8fe199358"
        ),
    ]
)
