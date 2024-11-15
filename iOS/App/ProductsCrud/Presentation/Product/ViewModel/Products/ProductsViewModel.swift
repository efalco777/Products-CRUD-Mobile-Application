//
//  ProductsViewModel.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 29/10/2024.
//

import Combine
import OSLog
import SwiftUI

class ProductsViewModel: ObservableObject {
    private static let logger = Logger.create(for: ProductsViewModel.self)

    private let useCase: GetProductsUseCase

    @Published var state: ProductsViewModelState =
        ProductsViewModelState.initial()

    init(useCase: GetProductsUseCase) {
        self.useCase = useCase
    }

    @MainActor
    func fetchProducts() async {
        do {
            let products = try await useCase.execute()
            state = ProductsViewModelState(
                dataState: DataState.loaded,
                products: products.map {
                    DomainToPresentationProductMapper.map(model: $0)
                })
        } catch {
            Self.logger.error("Error: \(error.localizedDescription)")
            state = ProductsViewModelState(
                dataState: DataState.error(error), products: [])
        }
    }
}
