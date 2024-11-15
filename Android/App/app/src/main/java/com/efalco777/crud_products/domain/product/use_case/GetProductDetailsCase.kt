package com.efalco777.crud_products.domain.product.use_case


import com.efalco777.crud_products.core.interactor.UseCase
import com.efalco777.crud_products.domain.product.model.ProductDetails
import com.efalco777.crud_products.domain.product.repository.ProductRepository

class GetProductDetailsUseCase  (
    private val repository: ProductRepository
) : UseCase<ProductDetails, Int>() {

    override suspend fun run(params: Int):  ProductDetails {
        return repository.getProductDetails(params)
    }
}