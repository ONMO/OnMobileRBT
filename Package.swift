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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.16/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "0ed021c774abead92acf6edd32682220222a320856e8faa5f30e802ca061deb6"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.16/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "2ab63360fb27817293d36df1380345459b08b7380a8660a04eb8600a4d2f8e24"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.16/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "487e34a9dd0b32ea095aa97efbcbc85108b7b9ee521fde61f81e21ae9085b465"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.16/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "11a6a85e9c83ae64a4554ae5d2ee9b7e9b1cfb8c38f03254746b99cb52b1951e"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.16/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "af4332f7f807bdb2f10bacf12ed4f423000bf6059c20a8d90ab339911a70cbcd"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.16/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "d1506356f87c2f5bc5b33fc15373975c69f92eb17b7f75b7329b748e48730367"
        ),
    ]
)
