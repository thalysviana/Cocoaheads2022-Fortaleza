//
//  CharacterListViewModel.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Combine
import Foundation

final class CharacterListViewModel: ObservableObject {
  private let hpService: HPServiceProtocol
  
  @Published var characters: Characters = []
  
  init(hpService: HPServiceProtocol = HPService()) {
    self.hpService = hpService
  }
  
  @MainActor
  func fetchCharacters() async {
    characters = await hpService.fetchCharacters()
  }
}
