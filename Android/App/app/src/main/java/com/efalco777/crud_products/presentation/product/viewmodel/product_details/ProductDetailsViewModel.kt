package com.efalco777.crud_products.presentation.product.viewmodel.product_details

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.efalco777.crud_products.domain.product.use_case.GetProductDetailsUseCase
import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.mapper.DomainToPresentationProductDetailsMapper
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import javax.inject.Inject


@HiltViewModel
class ProductDetailsViewModel @Inject constructor(
    private val getProductDetailsUseCase: GetProductDetailsUseCase
) : ViewModel() {
    private val _state =
        MutableStateFlow(ProductDetailsViewModelState.initial())

    val flow = _state.asStateFlow()

    fun loadData(id: Int) {
        try {
            _state.value = _state.value.copy(dataState = DataState.Loading)
            getProductDetailsUseCase.invoke(id, viewModelScope, onResult = { result ->
                _state.value = ProductDetailsViewModelState(
                    productDetails = DomainToPresentationProductDetailsMapper.map(result),
                    dataState = DataState.Loaded,
                )
            })

        } catch (e: Exception) {
            e.printStackTrace()
            _state.value = _state.value.copy(dataState = DataState.Error(e))
        }
    }
}
