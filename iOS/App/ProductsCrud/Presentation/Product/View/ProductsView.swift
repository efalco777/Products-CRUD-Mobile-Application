//
//  ProductsView.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 28/10/2024.
//

import SwiftUI

struct ProductsView: View {
    @StateObject private var viewModel = ProductsViewModel(
        useCase: Injector.container.resolve(GetProductsUseCase.self)!)

    var body: some View {
        NavigationStack {
            switch viewModel.state.dataState {
            case .loading:
                LoadingView()

            case .loaded:
                List(viewModel.state.products) { product in
                    NavigationLink {
                        ProductDetailsView(productId: product.id)
                    } label: {
                        Text(product.title)
                    }
                }

            case .error(let error):
                ErrorView(error: error, retryAction: loadProducts)
            }
        }

        .onAppear {
            loadProducts()
        }
    }

    private func loadProducts() {
        Task {
            await viewModel.fetchProducts()
        }
    }
}
