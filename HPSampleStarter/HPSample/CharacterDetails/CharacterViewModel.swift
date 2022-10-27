//
//  CharacterViewModel.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Foundation

struct CharacterViewModel: Identifiable {
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
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
        guard !character.dateOfBirth.isEmpty,
              let date = dateFormatter.date(from: character.dateOfBirth)
        else {
            return "-"
        }
        return dateFormatter.string(from: date)
    }
    
    var isWizard: String {
        character.wizard ? "Yes, sorcery is my passion 🧙‍♂️" : "No 😔"
    }
    
    private let character: Character
    
    init(character: Character) {
        self.character = character
    }
}
