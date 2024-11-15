//
//  ProductsViewModelTest.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import XCTest

@testable import ProductsCrud

class ProductsViewModelTests: XCTestCase {

    var viewModel: ProductsViewModel!
    var mockUseCase: MockGetProductsUseCase!
    var mockProductRepository: MockProductRepository!

    override func setUp() {
        super.setUp()
        mockProductRepository = MockProductRepository()
        mockUseCase = MockGetProductsUseCase(repository: mockProductRepository)
        viewModel = ProductsViewModel(useCase: mockUseCase)
    }

    override func tearDown() {
        viewModel = nil
        mockUseCase = nil
        super.tearDown()
    }

    // Test the initial state
    func test_initialState() {
        XCTAssertEqual(viewModel.state.dataState, .loading)
        XCTAssertTrue(viewModel.state.products.isEmpty)
    }

    // Test successful fetching of products
    func test_fetchProducts_success() async {
        // Given
        let mockProducts = [
            Product(
                id: 1, title: "Product 1", description: "Description 1",
                price: 10.0, category: "Category 1", images: []),
            Product(
                id: 2, title: "Product 2", description: "Description 2",
                price: 20.0, category: "Category 2", images: []),
        ]
        mockUseCase.shouldReturnError = false
        mockUseCase.mockProducts = mockProducts

        // When
        await viewModel.fetchProducts()

        // Then
        XCTAssertEqual(viewModel.state.dataState, .loaded)
        XCTAssertEqual(viewModel.state.products.count, 2)
        XCTAssertEqual(viewModel.state.products[0].id, 1)
        XCTAssertEqual(viewModel.state.products[1].id, 2)
    }

    // Test fetching products with failure
    func test_fetchProducts_failure() async {
        // Given
        mockUseCase.shouldReturnError = true

        // When
        await viewModel.fetchProducts()

        // Then
        XCTAssertEqual(
            viewModel.state.dataState,
            .error(NSError(domain: "TestError", code: 0, userInfo: nil)))
        XCTAssertTrue(viewModel.state.products.isEmpty)
    }
}
