// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "minecraft",
    products: [.library(name: "Minecraft", targets: ["Minecraft"])],
    targets: [.target(name: "Minecraft", resources: [
        .process("docs/biomes.json"),
        .process("docs/blocks.json"),
        .process("docs/collisions.json"),
        .process("docs/items.json"),
        .process("docs/protocol.json"),
        .process("docs/recipes.json"),
        .process("docs/states.json")
    ])]
)
