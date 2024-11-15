package com.efalco777.crud_products.presentation.product.viewmodel.product_details

import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.model.PresentationProductDetails

data class ProductDetailsViewModelState(
    val productDetails: PresentationProductDetails,
    val dataState: DataState
) {
    companion object {
        fun initial() =
            ProductDetailsViewModelState(
                productDetails = PresentationProductDetails.empty(),
                dataState = DataState.Loading
            )
    }
}