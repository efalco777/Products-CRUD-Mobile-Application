package com.efalco777.crud_products.presentation.product.compose.screen

import androidx.activity.compose.LocalOnBackPressedDispatcherOwner
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.res.stringResource
import androidx.hilt.navigation.compose.hiltViewModel
import com.efalco777.crud_products.R
import com.efalco777.crud_products.presentation.core.compose.ErrorContent
import com.efalco777.crud_products.presentation.core.compose.LoadingContent
import com.efalco777.crud_products.presentation.core.viewmodel.DataState
import com.efalco777.crud_products.presentation.product.viewmodel.product_details.ProductDetailsViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProductDetailsScreen(
    productId: Int,
    viewModel: ProductDetailsViewModel = hiltViewModel(),
) {
    val scrollBehavior = TopAppBarDefaults.enterAlwaysScrollBehavior()
    val state = viewModel.flow.collectAsState()
    val backDispatcher = LocalOnBackPressedDispatcherOwner.current?.onBackPressedDispatcher

    val initialized = remember { mutableStateOf(false) }

    LaunchedEffect(Unit) {
        if(!initialized.value) {
            viewModel.loadData(productId);
            initialized.value = true
        }
    }

    fun onRetryTap() {
        viewModel.loadData(id = productId)
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(text = stringResource(id = R.string.product_details_screen_app_bar_title)) },
                navigationIcon = {
                    IconButton(onClick = {
                        backDispatcher?.onBackPressed()
                    }) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Default.ArrowBack,
                            contentDescription = stringResource(id = R.string.common_back_button_content_description)
                        )
                    }
                }
            )
        },
        modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),

        ) { contentPadding ->
        Box(
            modifier = Modifier
                .padding(contentPadding)
                .then(Modifier.fillMaxSize())
        ) {
            when (state.value.dataState) {
                is DataState.Loading -> LoadingContent()
                is DataState.Loaded -> {
                    Column {
                        Text(state.value.productDetails.title)
                        Text(state.value.productDetails.description)
                    }
                }

                is DataState.Error -> {
                    ErrorContent(
                        message = stringResource(id = R.string.error_unexpected_message),
                        onRetry = ::onRetryTap
                    )
                }
            }
        }
    }
}


