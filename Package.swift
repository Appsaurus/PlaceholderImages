// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "PlaceholderImages",
	products: [
		.library(name: "PlaceholderImages", targets: ["PlaceholderImages"])
	],
	dependencies: [
		.package(url: "https://github.com/Appsaurus/SwiftTestUtils",  .upToNextMajor(from: "1.0.0"))
	],
	targets: [
	.target(name: "PlaceholderImages", dependencies: [], path: "Sources/Shared"),
		.testTarget(name: "PlaceholderImagesTests", dependencies: ["PlaceholderImages", "SwiftTestUtils"], path: "PlaceholderImagesTests/Shared")
	]
)
