//
//  ProductRepository.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 05/11/2024.
//

protocol ProductRepository {
    func getProducts() async throws -> [Product]
    func getProduct(id: Int) async throws-> ProductDetails
}
