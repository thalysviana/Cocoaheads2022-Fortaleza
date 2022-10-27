//
//  HPService.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Foundation

protocol HPServiceProtocol {
    func fetchCharacters() async -> Characters
}

final class HPService: HPServiceProtocol {
    private let service: NetworkServiceProtocol
    
    init(service: NetworkServiceProtocol = NetworkService()) {
        self.service = service
    }
    
    func fetchCharacters() async -> Characters {
        do {
            return try await service.fetchData(of: Characters.self, from: "https://hp-api.herokuapp.com/api/characters")
        } catch {
            return []
        }
    }
}
