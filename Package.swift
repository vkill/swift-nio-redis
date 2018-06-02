// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "swift-nio-redis",
    products: [
        .library   (name: "NIORedisProtocolImplementation", targets: [ "NIORedisProtocolImplementation" ]),
        .library   (name: "NIORedisClient",    targets: [ "NIORedisClient"    ]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", 
                 from: "1.8.0"),
    ],
    targets: [
        .target(name: "NIORedisProtocolImplementation", dependencies: [ "NIO", "NIOFoundationCompat" ], path: "Sources/NIORedis"),
        .target(name: "NIORedisClient",    dependencies: [ "NIORedisProtocolImplementation" ], path: "Sources/Redis")
    ]
)
