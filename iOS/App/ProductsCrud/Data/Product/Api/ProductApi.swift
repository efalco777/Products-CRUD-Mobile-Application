//
//  dasas.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

class ProductApi {
    
    private let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
    
    func getProduct(id: Int) async throws -> ProductDetailsDTO {
        try await client.data(from: ProductEndpoint.product(id: id))
    }
    
    func getProducts() async throws -> ProductsDTO {
        try await client.data(from: ProductEndpoint.products)
    }
}
    
