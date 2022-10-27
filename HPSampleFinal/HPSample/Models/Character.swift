// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Character
// sourcery: AutoEquatable
// sourcery: AutoFixturable
struct Character: Codable {
    let name: String
    let species: String
    let gender: String
    let house: String
    let dateOfBirth: String
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: String
    let eyeColour: String
    let hairColour: String
    let patronus: String
    let hogwartsStudent: Bool
    let hogwartsStaff: Bool
    let actor: String
    let alive: Bool
    let image: String

    enum CodingKeys: String, CodingKey {
        case name
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, patronus, hogwartsStudent, hogwartsStaff, actor
        case alive, image
    }
}

typealias Characters = [Character]
