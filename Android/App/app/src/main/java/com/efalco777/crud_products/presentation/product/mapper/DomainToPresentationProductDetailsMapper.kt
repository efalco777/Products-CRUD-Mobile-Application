package com.efalco777.crud_products.presentation.product.mapper

import com.efalco777.crud_products.domain.product.model.ProductDetails
import com.efalco777.crud_products.presentation.product.model.PresentationProductDetails

class DomainToPresentationProductDetailsMapper {
    companion object {
        fun map(model: ProductDetails): PresentationProductDetails {
            return PresentationProductDetails(
                id = model.id,
                title = model.title,
                description = model.description,
                category = model.category,
                price = model.price
            )
        }
    }
}