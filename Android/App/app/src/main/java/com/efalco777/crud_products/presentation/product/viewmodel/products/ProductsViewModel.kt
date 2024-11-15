package com.efalco777.crud_products.presentation.product.viewmodel.products

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.efalco777.crud_products.domain.product.use_case.GetProductsUseCase
import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.mapper.DomainToPresentationProductMapper
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import javax.inject.Inject

@HiltViewModel
class ProductsViewModel @Inject constructor(
    private val getProductsUseCase: GetProductsUseCase
) : ViewModel() {
    private val _state = MutableStateFlow(ProductsViewModelState.initial())
    val flow = _state.asStateFlow()

    init {
        loadData()
    }

    fun loadData() {
        try {
            _state.update { currentState ->
                currentState.copy(dataState = DataState.Loading)
            }
            getProductsUseCase.invoke(Unit, viewModelScope, onResult = { result ->
                _state.update { _ ->
                    ProductsViewModelState(
                        products = result.map { model -> DomainToPresentationProductMapper.map(model) },
                        dataState = DataState.Loaded,
                    )
                }
            })

        } catch (e: Exception) {
            e.printStackTrace()
            _state.update { _ ->
                _state.value.copy(dataState = DataState.Error(e))
            }
        }
    }
}

