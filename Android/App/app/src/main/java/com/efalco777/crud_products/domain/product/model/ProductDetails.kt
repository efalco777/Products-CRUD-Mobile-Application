package com.efalco777.crud_products.domain.product.model

data class ProductDetails(
    val id: Int,
    val title: String,
    val description: String,
    val category: String,
    val price: Double,
    ) {
    companion object {
        // Factory function for creating an empty or default instance
        fun empty() = ProductDetails(
            id = 0,
            title = "",
            description = "",
            category = "",
            price = 0.0
        )
    }
}

