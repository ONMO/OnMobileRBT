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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.9/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "0f995e8e3c7b25bcb724cd6a1a8d61d54a5b06a9de51f800b4317d3f867321c9"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.9/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "a9062cf94b6e71237e6206a9545525f023d06ad427506759495aaea90783ee60"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.9/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "967a4dbede24ff32b0de30b53af805a13c57a0a1c64adbd74d2171e13fa06bfd"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.9/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "2c588d3910d82b308ea3ed22c6283083d15c6bd71a69626961338b37c16c49fa"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.9/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "71bd74225dd5ab7274fe14ffa2fbca1c560ea0669fab7e6c32d4a6a562bc77eb"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.9/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "9abcd42718de62a02b68a8ff2a31fe8f5d3f3c73e42119953dbfe82db764a15b"
        ),
    ]
)
