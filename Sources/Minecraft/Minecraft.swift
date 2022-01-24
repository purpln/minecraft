import Foundation

open class Minecraft {
    private static var data = Objects()
}

public extension Minecraft {
    static var blocks: [[String:Any]]? { data.blocks }
    static var items: [[String:Any]]? { data.items }
    static var recipes: [String:Any]? { data.recipes }
    static var biomes: [[String:Any]]? { data.biomes }
    static var collisions: [String:Any]? { data.collisions }
    static var states: [[String:Any]]? { data.states }
    static var `protocol`: [String:Any]? { data.protocol }
}

extension Minecraft {
    class Objects {
        static var shared = Objects()
        
        var blocks: [[String:Any]]?
        var items: [[String:Any]]?
        var recipes: [String:Any]?
        var biomes: [[String:Any]]?
        var collisions: [String:Any]?
        var states: [[String:Any]]?
        var `protocol`: [String:Any]?
        
        init() {
            blocks = "blocks.json".data?.dict as? [[String:Any]]
            items = "items.json".data?.dict as? [[String:Any]]
            recipes = "recipes.json".data?.dict as? [String:Any]
            biomes = "biomes.json".data?.dict as? [[String:Any]]
            collisions = "collisions.json".data?.dict as? [String:Any]
            states = "states.json".data?.dict as? [[String:Any]]
            `protocol` = "protocol.json".data?.dict as? [String:Any]
        }
    }
}
