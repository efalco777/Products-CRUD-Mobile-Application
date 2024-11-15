//
//  NetworkImage.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import SwiftUI

struct NetworkImage: View {
    let imageUrl: String?

    var body: some View {
        if imageUrl == nil {
            Image(ImageAsset.placeholder.rawValue).scaledToFit()
                .frame(width: 200, height: 200)
        }

        AsyncImage(url: URL(string: imageUrl!)) { phase in
            switch phase {
            case .empty:
                ProgressView()  // Show a loading indicator while the image is being fetched
            case .success(let image):
                image.resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)  // Adjust size as needed
            case .failure:
                Text("Failed to load image")  // Show an error message if the image fails to load
            @unknown default:
                EmptyView()
            }
        }
    }
}
