// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBTSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
                    name: "OnMobileRBTSDK_ROBI",
                    targets: ["OnMobileRBTSDK_ROBI"]),
                .library(
                    name: "OnMobileRBTSDK_AIRTEL",
                    targets: ["OnMobileRBTSDK_AIRTEL"]),
    ],
    targets: [
        .binaryTarget(
                    name: "OnMobileRBTSDK_ROBI",
                    url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.22-beta.1/OnMobileRBTSDK_ROBI.xcframework.zip",
                    checksum: "0c04e0f4c01aee620c15dfefded8e02beb7bcceb1510e94281d0a18a4bb09e9d"
                ),
                .binaryTarget(
                    name: "OnMobileRBTSDK_AIRTEL",
                    url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.22-beta.1/OnMobileRBTSDK_AIRTEL.xcframework.zip",
                    checksum: "3d911692f2c20a86cb3fcce45b8d50276559743858881234afe1a25db62b6ea4"
                )
    ]
)
