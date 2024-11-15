package com.efalco777.crud_products.presentation.product.compose.screen

import android.util.Log
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.navigation.NavController
import com.efalco777.crud_products.presentation.core.compose.ErrorContent
import com.efalco777.crud_products.presentation.core.compose.LoadingContent
import com.efalco777.crud_products.presentation.core.navigation.Screen
import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.viewmodel.products.ProductsViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProductsScreen(
    navController: NavController,
    viewModel: ProductsViewModel = hiltViewModel()
) {
    val scrollBehavior = TopAppBarDefaults.enterAlwaysScrollBehavior()
    val state = viewModel.flow.collectAsState()

    fun onProductTap(id: Int) {
        navController.navigate(Screen.productDetails(id = id))
    }

    fun onRetryTap() {
        viewModel.loadData()
    }

    Scaffold(
        modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),

        ) { contentPadding ->
        Box(modifier = Modifier
            .padding(contentPadding)
            .then(Modifier.fillMaxSize())) {
            when (state.value.dataState) {
                is DataState.Loading -> {
                    LoadingContent()
                }

                is DataState.Loaded -> {
                    LazyColumn(
                        modifier = Modifier
                            .fillMaxSize()
                    ) {
                        items(state.value.products) { product ->
                            Row {
                                Text(product.title, modifier = Modifier.weight(1f))
                                Spacer(modifier = Modifier.width(24.dp))
                                IconButton(onClick = { onProductTap(id = product.id) }) {
                                    Text(text = "->")
                                }

                            }
                        }
                    }
                }

                is DataState.Error -> {
                    ErrorContent(message = "Unexpected error occured", onRetry = ::onRetryTap)
                }
            }
        }
    }
}


