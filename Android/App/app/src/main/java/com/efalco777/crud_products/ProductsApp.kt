package com.efalco777.crud_products

import ProductsAppNavHost
import androidx.compose.runtime.Composable
import androidx.navigation.compose.rememberNavController

@Composable
fun ProductsApp() {
    val navController = rememberNavController()

    ProductsAppNavHost(
        navController = navController
    )
}

