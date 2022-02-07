// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SlideShowView",
    defaultLocalization: "ko",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SlideShowView",
            targets: [
                "SlideShowView"
            ]
        ),
    ],
    dependencies: [
        .package(name: "OpenColorKit", url: "https://github.com/jaemyeong/OpenColorKit.git", .upToNextMajor(from: "0.1.4"))
    ],
    targets: [
        .target(
            name: "SlideShowView",
            dependencies: [
                "OpenColorKit"
            ]
        ),
        .testTarget(
            name: "SlideShowViewTests",
            dependencies: [
                "SlideShowView"
            ]
        ),
    ]
)
