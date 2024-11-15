package com.efalco777.crud_products.presentation.core.viewmodel

sealed class DataState {
    data object Loading : DataState()
    data object Loaded : DataState()
    data class Error(val error: Any) : DataState()
}