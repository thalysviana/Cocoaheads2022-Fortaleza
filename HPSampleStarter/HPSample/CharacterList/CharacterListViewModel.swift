//
//  CharacterListViewModel.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Combine
import Foundation

protocol CharacterListViewModelProtocol {
    func fetchCharacters() async
}

final class CharacterListViewModel: ObservableObject, CharacterListViewModelProtocol {
    // MARK: - Properties
    @Published var characters: [CharacterViewModel] = []
    
    // MARK: - Dependencies
    private let hpService: HPServiceProtocol
    
    // MARK: - Init
    init(hpService: HPServiceProtocol = HPService()) {
        self.hpService = hpService
    }
    
    // MARK: - Actions
    @MainActor
    func fetchCharacters() async {
        characters = await hpService
            .fetchCharacters()
            .compactMap {
                $0.image.isEmpty ? nil : .init(character: $0) 
            }
    }
}
