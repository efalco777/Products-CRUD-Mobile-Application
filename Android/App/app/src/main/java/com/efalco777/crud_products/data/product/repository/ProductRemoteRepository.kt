package com.efalco777.crud_products.data.product.repository

import com.efalco777.crud_products.data.product.api.ProductApi
import com.efalco777.crud_products.data.product.mapper.DataToDomainProductDetailsMapper
import com.efalco777.crud_products.data.product.mapper.DataToDomainProductMapper

import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.domain.product.model.ProductDetails
import com.efalco777.crud_products.domain.product.repository.ProductRepository
import javax.inject.Inject


class ProductRemoteRepository @Inject constructor(
    private val api: ProductApi
) : ProductRepository {
    override suspend fun getProductList(): List<Product> {
        val response = api.getProductList()

        return response.products.map { dto ->  DataToDomainProductMapper.map(dto)};
    }

    override suspend fun getProductDetails(id: Int): ProductDetails {
        val response = api.getProductDetails(id)

        return DataToDomainProductDetailsMapper.map(response)
    }
}