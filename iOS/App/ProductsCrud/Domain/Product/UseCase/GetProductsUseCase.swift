//
//  GetProductsUseCase.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

class GetProductsUseCase : AsyncUseCase {
    typealias Input = Void
    typealias Output = [Product]
    
    let repository: ProductRepository
    
    init(repository: ProductRepository) {
        self.repository = repository
    }
    
    func execute(_ __: Void = ()) async throws -> [Product] {
        try await repository.getProducts()
    }
}
