// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "minecraft",
    products: [.library(name: "Minecraft", targets: ["Minecraft"])],
    targets: [.target(name: "Minecraft", resources: [.process("docs/blocks.json")])]
)
