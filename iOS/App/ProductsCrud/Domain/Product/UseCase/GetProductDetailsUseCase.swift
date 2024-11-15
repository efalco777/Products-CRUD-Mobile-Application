//
//  GetProductDetailsUseCase.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

class GetProductDetailsUseCase: AsyncUseCase {
    typealias Input = Int
    typealias Output = ProductDetails

    let repository: ProductRepository

    init(repository: ProductRepository) {
        self.repository = repository
    }

    func execute(_ id: Int) async throws -> ProductDetails {
        try await repository.getProduct(id: id)
    }
}
