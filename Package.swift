// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "OILiveness3D",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "OILiveness3D", targets: ["OILiveness3DWrapper"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/oititec/ios-common-modules.git",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/oititec/ios-liveness3d-ft.git",
            revision: "fa21a2e673b5b71956490d9adf7fb8fb6a1ddb58"
        )
    ],
    targets: [
        .target(
            name: "OILiveness3DWrapper",
            dependencies: [
                .target(name: "OILiveness3D"),
                .product(name: "OICommons", package: "ios-common-modules"),
                .product(name: "OIComponents", package: "ios-common-modules"),
                .product(name: "OINetwork", package: "ios-common-modules"),
                .product(name: "OISecurity", package: "ios-common-modules"),
                .product(name: "FaceTecSDK", package: "ios-liveness3d-ft")
            ],
            path: "OILiveness3DWrapper"
        ),
        .binaryTarget(
            name: "OILiveness3D",
            path: "Framework/OILiveness3D.xcframework"
        ),
    ]
)
