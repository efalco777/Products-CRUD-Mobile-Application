package com.efalco777.crud_products.data.product.mapper

import com.efalco777.crud_products.data.product.model.ProductDTO
import com.efalco777.crud_products.domain.product.model.Product

class DataToDomainProductMapper {
    companion object {
        fun map(model: ProductDTO): Product {
            return Product(
                id = model.id,
                title = model.title,
                description = model.description,
                category = model.category,
                price = model.price
            )
        }
    }

}