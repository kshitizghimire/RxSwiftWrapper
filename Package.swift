// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "RxSwiftWrapper",
	platforms: [.iOS(.v13)],
	products: [
		.library(name: "Rx", targets: ["Rx"]),
		.library(name: "RxTesting", targets: ["RxTesting"])
	],
	dependencies: [
		.package(
			url: "https://github.com/ReactiveX/RxSwift.git",
			.upToNextMajor(from: "6.5.0")
		)
	],
	targets: [
		.target(
			name: "Rx",
			dependencies: [
				.product(name: "RxSwift", package: "RxSwift"),
				.product(name: "RxCocoa", package: "RxSwift"),
				.product(name: "RxRelay", package: "RxSwift"),
			]
		),
		.target(
			name: "RxTesting",
			dependencies: [
				.product(name: "RxTest", package: "RxSwift"),
				.product(name: "RxBlocking", package: "RxSwift")
			]
		)
	]
)
