// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CGdk",
    products: [
        .library(name: "CGdk",
                 targets: ["CGdk"])
    ],
    targets: [
        .systemLibrary(
            name: "CGdk",
            pkgConfig: "gdk-3.0",
            providers: [
                .brew(["libgtk-3"]),
                .apt(["libgtk-3-dev"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
