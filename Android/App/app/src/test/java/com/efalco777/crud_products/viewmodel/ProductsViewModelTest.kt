package com.efalco777.crud_products.viewmodel

import app.cash.turbine.test
import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.domain.product.use_case.GetProductsUseCase
import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.mapper.DomainToPresentationProductMapper
import com.efalco777.crud_products.presentation.product.viewmodel.products.ProductsViewModel
import com.efalco777.crud_products.presentation.product.viewmodel.products.ProductsViewModelState
import io.mockk.*
import junit.framework.TestCase.assertEquals
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test

class ProductsViewModelTest {

    private lateinit var viewModel: ProductsViewModel
    private val getProductsUseCase: GetProductsUseCase = mockk()

    @Before
    fun setup() {
        viewModel = ProductsViewModel(getProductsUseCase)
    }

    @Test
    fun `initial state is loading and empty products`() = runTest {
        val initialState = ProductsViewModelState.initial()
        assertEquals(initialState, viewModel.flow.value)
    }

    fun `fetchProducts updates state to loading and then to loaded with products`() = runTest {

        val domainProducts = listOf(Product.empty().copy(id = 0),Product.empty().copy(id = 1))
        coEvery { getProductsUseCase.invoke(Unit, any(), any()) } answers {
            val callback = thirdArg<(List<Product>) -> Unit>()
            callback(domainProducts) // Simulate successful result
        }


        viewModel.flow.test {
            viewModel.loadData()

            assertEquals(DataState.Loading, awaitItem().dataState)

            val loadedState = awaitItem()
            assertEquals(DataState.Loaded, loadedState.dataState)
            assertEquals(domainProducts.map { DomainToPresentationProductMapper.map(it) }, loadedState.products)
        }
    }

    @Test
    fun `fetchProducts updates state to error on failure`() = runTest {
        val exception = Exception("Network error")
        coEvery { getProductsUseCase.invoke(Unit, any(), any()) } throws exception

        viewModel.flow.test {
            viewModel.loadData()

            assertEquals(DataState.Loading, awaitItem().dataState)

            val errorState = awaitItem()
            assertEquals(DataState.Error(exception), errorState.dataState)
        }
    }
}
