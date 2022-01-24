import Foundation

extension Data {
    var dict: Any? { try? JSONSerialization.jsonObject(with: self) }
}
