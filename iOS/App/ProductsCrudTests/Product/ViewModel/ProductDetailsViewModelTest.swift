//
//  ProductDetailsViewModelTest.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import XCTest
@testable import ProductsCrud

class ProductDetailsViewModelTests: XCTestCase {
    
    var viewModel: ProductDetailsViewModel!
    var mockUseCase: MockGetProductDetailsUseCase!
    var mockProductRepository: MockProductRepository!

    override func setUp() {
        super.setUp()
        mockProductRepository = MockProductRepository()
        mockUseCase = MockGetProductDetailsUseCase(repository: mockProductRepository)
        viewModel = ProductDetailsViewModel(useCase: mockUseCase)
    }

    override func tearDown() {
        viewModel = nil
        mockUseCase = nil
        super.tearDown()
    }

    // Test the initial state
    func test_initialState() {
        XCTAssertEqual(viewModel.state.dataState, .loading)
        XCTAssertEqual(viewModel.state.productDetails.id, 0)
    }

    // Test successful fetching of product details
    func test_fetchProductDetails_success() async {
        // Given
        mockUseCase.shouldReturnError = false

        // When
        await viewModel.fetchProductDetails(id: 1)

        // Then
        XCTAssertEqual(viewModel.state.dataState, .loaded)
        XCTAssertEqual(viewModel.state.productDetails.id, 1)
        XCTAssertEqual(viewModel.state.productDetails.title, "Test Product")
        XCTAssertEqual(viewModel.state.productDetails.description, "Test Description")
        XCTAssertEqual(viewModel.state.productDetails.price, 99.99)
        XCTAssertEqual(viewModel.state.productDetails.category, "Test Category")
        XCTAssertEqual(viewModel.state.productDetails.images, ["image1.jpg"])
    }

    // Test failed fetching of product details
    func test_fetchProductDetails_failure() async {
        // Given
        mockUseCase.shouldReturnError = true

        // When
        await viewModel.fetchProductDetails(id: 1)

        // Then
        XCTAssertEqual(viewModel.state.dataState, .error(NSError(domain: "TestError", code: 0, userInfo: nil)))
        XCTAssertEqual(viewModel.state.productDetails.id, 0)
        XCTAssertEqual(viewModel.state.productDetails.title, "")
        XCTAssertEqual(viewModel.state.productDetails.description, "")
        XCTAssertEqual(viewModel.state.productDetails.price, 0.0)
        XCTAssertEqual(viewModel.state.productDetails.category, "")
        XCTAssertEqual(viewModel.state.productDetails.images, [])
    }
}
