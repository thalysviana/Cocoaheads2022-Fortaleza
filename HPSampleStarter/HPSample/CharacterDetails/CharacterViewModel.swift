//
//  CharacterViewModel.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Foundation

// sourcery: AutoFixturable
struct CharacterViewModel: Identifiable {
    let id: UUID
    
    var name: String {
        character.name
    }
    
    var imageURL: URL {
        URL(string: character.image)!
    }
    
    var house: String {
        character.house.isEmpty ? "-" : character.house
    }
    
    var dateOfBirth: String {
        character.dateOfBirth.isEmpty ? "-" : character.dateOfBirth
    }
    
    var isWizard: String {
        character.wizard ? "Yes, sorcery is my passion 🧙‍♂️" : "No 😔"
    }
    
    // sourcery: example = ".fixture()"
    private let character: Character
    
    init(id: UUID = .init(), character: Character) {
        self.id = id
        self.character = character
    }
}
