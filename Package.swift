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
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.10/OnMobileRBTSDK_PRODUCT.xcframework.zip",
            checksum: "9a977684e98e71fbec8b1a719798107126352093854cbba01df60297f5627f51"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_VIL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.10/OnMobileRBTSDK_VIL.xcframework.zip",
            checksum: "103fe64b5b5cb69aa6ac4f7db414ad47edc4c65cca1c873a64cc946326e9e79a"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_MYGP",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.10/OnMobileRBTSDK_MYGP.xcframework.zip",
            checksum: "d79e3b42c70626d6d74ade54aadad5c2095a8b2eed40b284ec968bd5e34201ff"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_DU",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.10/OnMobileRBTSDK_DU.xcframework.zip",
            checksum: "c0b389ad66ee35a2087761ac9242681926b2254343dab7481997d49b8bc6bb87"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_ROBI",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.10/OnMobileRBTSDK_ROBI.xcframework.zip",
            checksum: "8847d7bcc3a79e1fef3daad07b52b138c8f9809c51133cebd6468f800566596d"
        ),
        .binaryTarget(
            name: "OnMobileRBTSDK_AIRTEL",
            url: "https://github.com/ONMO/OnMobileRBT/releases/download/3.1.10/OnMobileRBTSDK_AIRTEL.xcframework.zip",
            checksum: "40f5ee8874b7a5ae50a8122aac77028ae798847b75954388b13fc8ad077bd264"
        ),
    ]
)
