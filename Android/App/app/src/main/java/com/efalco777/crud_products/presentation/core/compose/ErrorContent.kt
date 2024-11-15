package com.efalco777.crud_products.presentation.core.compose

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.foundation.layout.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
@Composable
fun ErrorContent(
    message: String,
    onRetry: () -> Unit
) {
    Column(
        modifier = Modifier.padding(24.dp)
    ) {
        Text(text = message)

        Spacer(modifier = Modifier.height(8.dp))

        Button(
            onClick = onRetry
        ) {
            Text("Retry")
        }
    }
}