//
//  CharacterItem.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import SwiftUI

struct CharacterItem: View {
    var viewModel: CharacterViewModel
    
    var body: some View {
        AsyncImage(url: viewModel.imageURL) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40, maxHeight: 40)
        } placeholder: {
            ProgressView()
        }
        Text(viewModel.name)
    }
}

struct CharacterItem_Previews: PreviewProvider {
    static var previews: some View {
        CharacterItem(
            viewModel: .init(
                id: .init(),
                name: "Hélri Póter",
                imageURL: .init(string: "https://www.helripoter.test/test")!)
        )
    }
}
