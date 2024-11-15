//
//  MockProductRepository.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import XCTest
@testable import ProductsCrud

class MockProductRepository: ProductRepository {
    var shouldReturnError = false
    var mockProducts: [Product] = [
        Product(id: 1, title: "Product 1", description: "Description 1", price: 10.0, category: "Category 1", images: ["image1.jpg"]),
        Product(id: 2, title: "Product 2", description: "Description 2", price: 20.0, category: "Category 2", images: ["image2.jpg"])
    ]
    var mockProductDetails: ProductDetails = ProductDetails(
        id: 1,
        title: "Test Product",
        description: "Test Description",
        price: 99.99,
        category: "Test Category",
        images: ["image1.jpg"]
    )

    func getProducts() async throws -> [Product] {
        if shouldReturnError {
            throw NSError(domain: "TestError", code: 0, userInfo: nil)
        } else {
            return mockProducts
        }
    }

    func getProduct(id: Int) async throws -> ProductDetails {
        if shouldReturnError {
            throw NSError(domain: "TestError", code: 0, userInfo: nil)
        } else {
            return mockProductDetails
        }
    }
}
