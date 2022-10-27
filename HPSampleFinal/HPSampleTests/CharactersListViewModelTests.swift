//
//  CharactersListViewModelTests.swift
//  HPSampleTests
//
//  Created by Thalys Viana on 27/10/22.
//

import Foundation
import XCTest

@testable import HPSample

final class CharactersListViewModelTests: XCTestCase {
    func testFetchCharacters_WhenServiveResponseDidSucceed() async {
        // TODO: - Create spy to inject into the ViewModel using Sourcery
        
        // Given
        let serviceSpy = HPServiceProtocolSpy()
        serviceSpy.stubbedFetchCharactersResult = [.fixture()]
        let expectedResult = [CharacterViewModel(character: .fixture())]
        let sut = CharacterListViewModel(hpService: serviceSpy)
        
        // When
        await sut.fetchCharacters()
        
        // Then
        XCTAssertTrue(serviceSpy.invokedFetchCharacters)
        XCTAssertEqual(serviceSpy.invokedFetchCharactersCount, 1)
        XCTAssertEqual(sut.characters, expectedResult)
    }
}


