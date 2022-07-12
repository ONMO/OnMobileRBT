// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBTSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "OnMobileRBTSDK",
            targets: ["OnMobileRBTSDK_VIL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.1/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "bbf8197bf9466b5490ac959dfb9d9341b7d7f96ed5ff5fe0fd26d4428eec4f3e"
        ),
//        .binaryTarget(
//            name: "OnMobileRBTSDK_VIL",
//            path: "Build/iOS/OnMobileRBTSDK_VIL.xcframework"
//        ),
    ]
)
