//
//  ProductDetailsView.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import SwiftUI

struct ProductDetailsView: View {
    private let productId: Int

    init(productId: Int) {
        self.productId = productId
    }

    @StateObject private var viewModel = ProductDetailsViewModel(
        useCase: Injector.container.resolve(GetProductDetailsUseCase.self)!)

    var body: some View {
        VStack {
            switch viewModel.state.dataState {
            case .loading:
                LoadingView()

            case .loaded:
                VStack {
                    Spacer()
                    NetworkImage(
                        imageUrl:  viewModel.state.productDetails.images.first
                            ?? ImageAsset.placeholder.rawValue
                    ).frame( height: 100)
                        .padding()
                    Spacer()
                    Text(viewModel.state.productDetails.title).font(.title).multilineTextAlignment(.center)
                    Spacer().frame(height: 6)
                    Text(viewModel.state.productDetails.description).font(.body).multilineTextAlignment(.center)
                    Spacer()
                }.padding()

            case .error(let error):
                ErrorView(error: error, retryAction: loadDetails)
            }
        }
        .navigationTitle("Details")
        .onAppear {
            loadDetails()
        }
    }

    private func loadDetails() {
        Task {
            await viewModel.fetchProductDetails(id: productId)
        }
    }
}
