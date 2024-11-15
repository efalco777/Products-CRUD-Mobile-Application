package com.efalco777.crud_products.presentation.product.mapper

import com.efalco777.crud_products.data.product.model.ProductDTO
import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.presentation.product.model.PresentationProduct

class DomainToPresentationProductMapper {
    companion object {
        fun map(model: Product): PresentationProduct {
            return PresentationProduct(
                id = model.id,
                title = model.title,
                description = model.description,
                category = model.category,
                price = model.price
            )
        }
    }

}