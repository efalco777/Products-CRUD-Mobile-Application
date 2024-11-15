package com.efalco777.crud_products.domain.product.model


data class Product(
    val id: Int,
    val title: String,
    val description: String,
    val category: String,
    val price: Double,

    ) {
    companion object {
        // Factory function for creating an empty or default instance
        fun empty() = Product(
            id = 0,
            title = "",
            description = "",
            category = "",
            price = 0.0
        )
    }
}
