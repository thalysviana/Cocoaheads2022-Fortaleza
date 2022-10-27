// Generated using Sourcery 1.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
@testable import HPSample

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - Character AutoEquatable
extension Character: Equatable {}
public func == (lhs: Character, rhs: Character) -> Bool {
    guard lhs.name == rhs.name else { return false }
    guard lhs.species == rhs.species else { return false }
    guard lhs.gender == rhs.gender else { return false }
    guard lhs.house == rhs.house else { return false }
    guard lhs.dateOfBirth == rhs.dateOfBirth else { return false }
    guard compareOptionals(lhs: lhs.yearOfBirth, rhs: rhs.yearOfBirth, compare: ==) else { return false }
    guard lhs.wizard == rhs.wizard else { return false }
    guard lhs.ancestry == rhs.ancestry else { return false }
    guard lhs.eyeColour == rhs.eyeColour else { return false }
    guard lhs.hairColour == rhs.hairColour else { return false }
    guard lhs.patronus == rhs.patronus else { return false }
    guard lhs.hogwartsStudent == rhs.hogwartsStudent else { return false }
    guard lhs.hogwartsStaff == rhs.hogwartsStaff else { return false }
    guard lhs.actor == rhs.actor else { return false }
    guard lhs.alive == rhs.alive else { return false }
    guard lhs.image == rhs.image else { return false }
    return true
}
// MARK: - CharacterViewModel AutoEquatable
extension CharacterViewModel: Equatable {}
public func == (lhs: CharacterViewModel, rhs: CharacterViewModel) -> Bool {
    guard lhs.character == rhs.character else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
