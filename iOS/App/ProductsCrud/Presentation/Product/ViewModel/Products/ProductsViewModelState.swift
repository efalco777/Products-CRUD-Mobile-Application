//
//  ProductViewModelState.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

struct ProductsViewModelState {
    let dataState: DataState
    let products: [PresentationProduct]

    static func initial() -> ProductsViewModelState {
        return ProductsViewModelState(dataState: .loading, products: [])
    }
}
