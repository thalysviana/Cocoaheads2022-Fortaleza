//
//  NetworkService.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import Foundation

protocol NetworkServiceProtocol {
  func fetchData<T: Codable>(of type: T.Type, from url: String) async throws -> T
}

final class NetworkService: NetworkServiceProtocol {
  private let session: URLSession
  
  init(session: URLSession = .shared) {
    self.session = session
  }
  
  func fetchData<T: Codable>(of type: T.Type = T.self, from url: String) async throws -> T {
    guard let requestUrl = URL(string: url) else {
      throw NetworkError.invalidUrl
    }
    
    do {
      let (data, _) = try await session.data(from: requestUrl)
      return try JSONDecoder().decode(type, from: data)
    } catch {
      throw NetworkError.decodeFailed
    }
  }
}

extension NetworkService {
  enum NetworkError: Error {
    case invalidUrl
    case decodeFailed
  }
}
