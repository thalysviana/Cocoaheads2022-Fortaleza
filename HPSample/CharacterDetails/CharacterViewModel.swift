//
//  CharacterViewModel.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Foundation

struct CharacterViewModel: Identifiable {
    let id: UUID = .init()
    
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
    
    private let character: Character
    
    init(character: Character) {
        self.character = character
    }
}
