import Foundation

// sourcery: FixturableValues
struct FixturableValues {
    var Int: Int = 1980
    var URL: URL = .init(string: "https://test.test/test")!
    var Bool = true
    var UUID: UUID = .init(uuidString: "52ccd1e4-e4b1-4192-9ffe-1d8f9af30d0f")!
    var Date: Date = .init(timeIntervalSince1970: 1_893_499_200)
    var String: String = "Lorem ipsum"
}
