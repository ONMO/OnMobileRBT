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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.13/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "d666856a120d9c571830c6f76d3a881b1a55ca9e232164914948e262fce8d238"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.13/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "567223f596e74c5f51225cc27a98b754fd78116d2d89c3d45febab14c399dba1"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.13/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "d8015054078fedc5a0fe07e77338d8615d762f1e2be89f02fda4a0eebcb43bf6"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.13/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "b038f224b0a390dba197115dd6074f6a752eb1aa1ea1fe15785c6dfdea1a979f"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.13/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "d2183a2c90336e8d497d13958f82504f2b0a65c7267290c0fc74de07ea940ccf"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.13/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "9e75bcc70df56d03e756a47b3c3afe25a9027b9d070cfa3fe1108a95a89369c0"
        ),
    ]
)
