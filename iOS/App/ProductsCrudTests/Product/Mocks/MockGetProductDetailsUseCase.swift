//
//  MockGetProductDetailsUseCase.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import XCTest
@testable import ProductsCrud

class MockGetProductDetailsUseCase: GetProductDetailsUseCase {
    var shouldReturnError = false
    var mockProductDetails: ProductDetails = ProductDetails(
        id: 1,
        title: "Test Product",
        description: "Test Description",
        price: 99.99,
        category: "Test Category",
        images: ["image1.jpg"]
    )

        
    override func execute(_ id: Int) async throws -> ProductDetails {
        if shouldReturnError {
            throw NSError(domain: "TestError", code: 0, userInfo: nil)
        } else {
            return mockProductDetails
        }
    }
}


