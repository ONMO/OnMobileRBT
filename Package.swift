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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.8/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "905fa8a9714681a5c297f70971389dfeb025b170b1b2f27c389cc742af00b66e"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.8/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "13413146cc5513648ec5103a059c383d12613697d540fcaef9db232ebefdd111"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.8/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "892fb89f94ca3d1c593e6ffad85c2895f80d0049fcfa480c27c76da86e0a8b30"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.8/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "9fa4ee9554b35997a923ec2d4457309ca206802eb0063e247c4a113aae379691"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.8/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "f22bac32ad7f266680e5cdb8a7f210c751c1b54ecf8626eda93583e9ea6a5fe9"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.8/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "5e647e01ff40c236f76f96b45139054d3ee84ff5355d00fc672c53359c8cbcb5"
        ),
    ]
)
