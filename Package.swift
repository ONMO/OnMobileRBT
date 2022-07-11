// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileRBT",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OnMobileRBT",
            targets: ["OnMobileRBT", "OnMobileRBTSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "OnMobileRBT",
            dependencies: []),
        .binaryTarget(
                    name: "OnMobileRBTSDK",
                    url: "https://github.com/ONMO/OnMobileRBT/releases/download/v3.1.1/OnMobileRBTSDK-v3.1.1.zip",
                    checksum: "53ae076eaa2439281c1b81d01b3cc15395fb73a089f8b2c5186a86005a11cd70"
                ),
        .testTarget(
            name: "OnMobileRBTTests",
            dependencies: ["OnMobileRBT"]),
    ]
)
