package com.efalco777.crud_products.presentation.core.navigation



class Screen private constructor(private val path: String) {

    companion object {
        const val PRODUCTS_ROUTE = "/"
        const val PRODUCT_DETAILS_ROUTE = "/product/{id}"

        fun productDetails(id: Int): String {
            return PRODUCT_DETAILS_ROUTE.replace("{id}", id.toString())
        }
    }
}


