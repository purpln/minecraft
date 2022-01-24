import Foundation

open class Minecraft {
    private static var data = Objects()
}

public extension Minecraft {
    static var blocks: [[String:Any]]? { data.blocks }
}

extension Minecraft {
    class Objects {
        static var shared = Objects()
        
        var blocks: [[String:Any]]?
        
        init() {
            blocks = "blocks.json".data?.dict as? [[String:Any]]
        }
    }
}
