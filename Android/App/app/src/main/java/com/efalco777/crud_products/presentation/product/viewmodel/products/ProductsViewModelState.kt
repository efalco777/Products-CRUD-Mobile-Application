package com.efalco777.crud_products.presentation.product.viewmodel.products

import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.model.PresentationProduct

data class ProductsViewModelState(
    val products: List<PresentationProduct>,
    val dataState: DataState
) {
    companion object {
        fun initial() =
            ProductsViewModelState(
                products = listOf(),
                dataState = DataState.Loading
            )
    }
}