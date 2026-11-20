// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationApplovinAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationApplovinAdapter",
            targets: ["AnyThinkMediationApplovinAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.7.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkApplovinAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkApplovinAdapter/130700.2.10/AnyThinkApplovinAdapter-130700.2.10.zip",
            checksum: "b6eac5fff36b58687548b493d97bf8955488b5dc920fac2e401db7885901341b"
        ),
        .target(
            name: "AnyThinkMediationApplovinAdapterTarget",
            dependencies: [
                "AnyThinkApplovinAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationApplovinAdapterTarget"
        )
    ]
)