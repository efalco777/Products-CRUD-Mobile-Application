//
//  ProductViewModelState.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

struct ProductDetailsViewModelState: Equatable {
    let dataState: DataState
    let productDetails: PresentationProductDetails

    static func initial() -> ProductDetailsViewModelState {
        return ProductDetailsViewModelState(
            dataState: .loading,
            productDetails: PresentationProductDetails.empty())
    }
}
