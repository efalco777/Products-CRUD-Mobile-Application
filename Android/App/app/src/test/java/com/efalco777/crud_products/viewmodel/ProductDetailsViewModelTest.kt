package com.efalco777.crud_products.viewmodel

import app.cash.turbine.test
import com.efalco777.crud_products.domain.product.model.ProductDetails
import com.efalco777.crud_products.domain.product.use_case.GetProductDetailsUseCase
import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.mapper.DomainToPresentationProductDetailsMapper
import com.efalco777.crud_products.presentation.product.viewmodel.product_details.ProductDetailsViewModel
import com.efalco777.crud_products.presentation.product.viewmodel.product_details.ProductDetailsViewModelState
import io.mockk.*
import junit.framework.TestCase.assertEquals
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test

class ProductDetailsViewModelTest {

    private lateinit var viewModel: ProductDetailsViewModel
    private val getProductDetailsUseCase: GetProductDetailsUseCase = mockk()

    @Before
    fun setup() {
        // Initialize the ViewModel with the mocked use case
        viewModel = ProductDetailsViewModel(getProductDetailsUseCase)
    }

    @Test
    fun `initial state is loading with empty product details`() = runTest {
        // Verify the initial state is loading and product details are empty
        val initialState = ProductDetailsViewModelState.initial()
        assertEquals(initialState, viewModel.flow.value)
    }

    @Test
    fun `fetchProducts updates state to loading and then to loaded with product details`() = runTest {
        // Arrange: Set up the mock use case to return a domain product details
        val domainProductDetails = ProductDetails.empty()
        coEvery { getProductDetailsUseCase.invoke(1, any(), any()) } answers {
            val callback = thirdArg<(ProductDetails) -> Unit>()
            callback(domainProductDetails) // Simulate successful result
        }

        // Act: Collect the flow to verify state changes
        viewModel.flow.test {
            viewModel.loadData(1)

            // Assert: Verify that the state is first set to Loading
            assertEquals(DataState.Loading, awaitItem().dataState)

            // Assert: Verify that the state is updated to Loaded with the mapped product details
            val loadedState = awaitItem()
            assertEquals(DataState.Loaded, loadedState.dataState)
            assertEquals(DomainToPresentationProductDetailsMapper.map(domainProductDetails), loadedState.productDetails)
        }
    }

    @Test
    fun `fetchProducts updates state to error on failure`() = runTest {
        // Arrange: Set up the mock use case to throw an exception
        val exception = Exception("Network error")
        coEvery { getProductDetailsUseCase.invoke(1, any(), any()) } throws exception

        // Act: Collect the flow to verify state changes
        viewModel.flow.test {
            viewModel.loadData(1)

            // Assert: Verify that the state is first set to Loading
            assertEquals(DataState.Loading, awaitItem().dataState)

            // Assert: Verify that the state is updated to Error with the exception
            val errorState = awaitItem()
            assertEquals(DataState.Error(exception), errorState.dataState)
        }
    }
}
