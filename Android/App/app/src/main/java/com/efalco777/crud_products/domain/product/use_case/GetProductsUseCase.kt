package com.efalco777.crud_products.domain.product.use_case

import com.efalco777.crud_products.core.interactor.UseCase
import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.domain.product.repository.ProductRepository

class GetProductsUseCase (
    private val api: ProductRepository
) : UseCase<List<Product>, Unit>() {

    override suspend fun run(params: Unit):  List<Product> {
        return api.getProductList()
    }
}