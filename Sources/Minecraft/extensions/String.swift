import Foundation

extension String {
    var data: Data? {
        let array: [String] = components(separatedBy: ".")
        guard array.count == 2, let first = array.first, let last = array.last,
              let url = Bundle.module.url(forResource: first, withExtension: last),
              let data = try? Data(contentsOf: url) else { return nil }
        return data
    }
}
