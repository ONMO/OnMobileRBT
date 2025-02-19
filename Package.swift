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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.15/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "fe38103766a326e593539988947774c3c9deb87afdb257029f2f7cc665c1dda7"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.15/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "1ded3693ecdc5843804196d949dfa0628743b40e74397b61c0cdca4d757fc4f4"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.15/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "75654ff93adff859984e0b63879d953a18e09f2a3645e3cf56b709a3d813384b"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.15/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "6951fe149241f4d34da439d801bdeaa0ecd1c6554aeadd32613f1189659f5fdb"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.15/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "ae751ea2ae81a896c2f119a9e6c8da883b553177e718929bebc3399c431c4d28"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.15/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "9444b97860c13c8ed29d56fc23aeac0b5245afba96029028ee6cb300e62730f9"
        ),
    ]
)
