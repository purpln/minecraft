// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "minecraft",
    products: [.library(name: "package", targets: ["Minecraft"])],
    dependencies: [],
    targets: [.target(name: "Minecraft", resources: [.process("docs/blocks.json")])]
)
