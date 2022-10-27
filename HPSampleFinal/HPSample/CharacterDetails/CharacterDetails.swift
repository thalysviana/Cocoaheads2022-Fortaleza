//
//  CharcaterDetails.swift
//  HPSample
//
//  Created by Thalys Viana on 27/10/22.
//

import SwiftUI

struct CharacterDetails: View {
    var viewModel: CharacterViewModel
    
    var body: some View {
        Form {
            Section("Character") {
                HStack {
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
            Section("House") {
                Text(viewModel.house)
            }
            Section("Birth date") {
                Text(viewModel.dateOfBirth)
            }
            Section("Is a wizard?") {
                Text(viewModel.isWizard)
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct CharacterDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetails(viewModel: .init(
//            id: .init(),
//            name: "Hélri Póter",
//            imageURL: .init(string: "https://www.helripoter.test/test")!
//        ))
//    }
//}
