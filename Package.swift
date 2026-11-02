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
                    url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.21/OnMobileRBTSDK_ROBI.xcframework.zip",
                    checksum: "0cb8a96dcedc051b692d377dd8b45e4f2dae591ecfe23dbc7605823f678d4234"
                ),
                .binaryTarget(
                    name: "OnMobileRBTSDK_AIRTEL",
                    url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.21/OnMobileRBTSDK_AIRTEL.xcframework.zip",
                    checksum: "e1b7e235d9036ce2ba4b7ce9f1a9f2075ad6c892c8dc4a06a745ea7a5fcbee5b"
                )
    ]
)
