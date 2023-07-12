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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.7/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "41ce66d44f4a78a5a9de4cebf3ff93b7f55c6884a65a3334befef2224cfe740a"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.7/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "296b3827d4f4169ce9afe3974e4bbbb6684f549e9cccef001d464c5270c66cf6"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.7/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "4ff989be02c2b358c4356580be560f6f3923ba89a5fa932a861d34a4ff46092c"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.7/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "24162103c308fefb9254acb098b07dd9307cf1a4a9d0ab9945424093bb587fd9"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.7/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "7215518183aafe4b90717ac2a862c8549523c27705f6e52c4b3fd6e9c6f35bf1"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.7/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "e7178c024c5c942d69cc4c1baf59571ced03eee48b546e6580d75c1656ec87a7"
        ),
    ]
)
