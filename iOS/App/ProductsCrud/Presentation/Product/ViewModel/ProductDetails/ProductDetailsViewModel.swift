//
//  product_view_model.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 29/10/2024.
//

import Combine
import OSLog
import SwiftUI

class ProductDetailsViewModel: ObservableObject {
    private static let logger = Logger.create(for: ProductDetailsViewModel.self)

    private let useCase: GetProductDetailsUseCase

    @Published var state: ProductDetailsViewModelState =
        ProductDetailsViewModelState.initial()

    init(useCase: GetProductDetailsUseCase) {
        self.useCase = useCase
    }

    @MainActor
    func fetchProductDetails(id: Int) async {
        do {
            let productDetails = try await useCase.execute(id)
            state = ProductDetailsViewModelState(
                dataState: DataState.loaded,
                productDetails: DomainToPresentationProductDetailsMapper.map(model: productDetails)
            )
        } catch {
            Self.logger.error("Error: \(error.localizedDescription)")
            state = ProductDetailsViewModelState(
                dataState: DataState.error(error),
                productDetails: PresentationProductDetails.empty()
            )
        }
    }
}
