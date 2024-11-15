package com.efalco777.crud_products.data.product.model

data class ProductDetailsDTO(
    val id: Int,
    val title: String,
    val description: String,
    val category: String,
    val price: Double,
)
