package com.efalco777.crud_products.data.product.mapper

import com.efalco777.crud_products.data.product.model.ProductDTO
import com.efalco777.crud_products.data.product.model.ProductDetailsDTO
import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.domain.product.model.ProductDetails

class DataToDomainProductDetailsMapper {
    companion object {
        fun map(model: ProductDetailsDTO): ProductDetails {
            return ProductDetails(
                id = model.id,
                title = model.title,
                description = model.description,
                category = model.category,
                price = model.price
            )
        }
    }
}