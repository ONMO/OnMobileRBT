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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.12/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "f44ae5321e7d9d2ce17e9af3338c5eaadd9d31a44d9f21843058a40cb1ab1afa"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.12/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "a5e3f2d16e46f741b53e63debdea316dba4df68d497512bd54dd1952101059e7"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.12/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "3e74bd773c50863dc2d98a2b1f022b0f9ce70fc568274d06ad208c0082fc5396"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.12/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "2703bd6f73118c79e4ad477f7bdb2dd49009f624768b764f146f77d5ceccd96d"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.12/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "d3c302074a368a77c7fe85ac6f9e50bceb8ae99513a908d23999a1588eb77561"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.12/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "f0f41195fa6089a9efb64042d9052152259e953f01b1e7430b27dc6de6a14a05"
        ),
    ]
)
