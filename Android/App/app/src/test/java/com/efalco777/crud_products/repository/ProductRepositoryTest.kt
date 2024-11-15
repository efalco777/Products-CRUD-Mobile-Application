package com.efalco777.crud_products.repository

import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.domain.product.model.ProductDetails
import com.efalco777.crud_products.domain.product.repository.ProductRepository
import io.mockk.*
import junit.framework.TestCase.assertEquals
import kotlinx.coroutines.test.*
import org.junit.Before
import org.junit.Test

class ProductRepositoryTest {

    private lateinit var productRepository: ProductRepository

    @Before
    fun setup() {
        productRepository = mockk()

        coEvery { productRepository.getProductList() } returns listOf(
            Product.empty().copy(id = 0, title = "Product A"),
            Product.empty().copy(id = 1, title = "Product B"),
        )

        coEvery { productRepository.getProductDetails(0) } returns ProductDetails.empty()
            .copy(id = 1, description = "Description A")
    }

    @Test
    fun `getProductList should return a list of products`() = runTest {
        val productList = productRepository.getProductList()

        assertEquals(2, productList.size)
        assertEquals("Product A", productList[0].title)
        assertEquals("Product B", productList[1].title)
    }

    @Test
    fun `getProductDetails should return product details for a valid ID`() = runTest {
        val productDetails = productRepository.getProductDetails(0)

        assertEquals(1, productDetails.id)
        assertEquals("Description A", productDetails.description)
    }

    @Test
    fun `getProductList should return empty list when no products are available`() = runTest {
        coEvery { productRepository.getProductList() } returns emptyList()

        val productList = productRepository.getProductList()

        assertEquals(0, productList.size)
    }
}
