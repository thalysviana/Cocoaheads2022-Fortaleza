//
//  CharacterListView.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import SwiftUI

struct CharacterListView: View {
    @ObservedObject var viewModel: CharacterListViewModel
    
    var body: some View {
        NavigationView {
            List {
                if viewModel.characters.isEmpty {
                    ProgressView()
                } else {
                    ForEach(viewModel.characters, id: \.imageURL) { character in
                        HStack(spacing: 16) {
                            NavigationLink {
                                CharacterDetails(viewModel: character)
                            } label: {
                                Text(character.name)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Characters 🪄")
            .onAppear {
                Task {
                    await viewModel.fetchCharacters()
                }
            }
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView(viewModel: .init(hpService: HPService()))
    }
}
