
package com.efalco777.crud_products

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import com.efalco777.crud_products.presentation.core.ui.theme.Crud_productsTheme
import dagger.hilt.android.AndroidEntryPoint


@AndroidEntryPoint
class ProductsActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        enableEdgeToEdge()
        setContent {
            Crud_productsTheme {
                ProductsApp()
            }
        }
    }
}