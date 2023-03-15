// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TZImagePickerController",
    defaultLocalization: "cn",
    platforms: [.iOS(.v8)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TZImagePickerController",
            targets: ["TZImagePickerController"]),
    ],
    targets: [
        .target(
            name: "TZImagePickerController",
            resources: [.process("TZImagePickerController.bundle")],
            publicHeadersPath: "Include"
        ),
    ]
)
