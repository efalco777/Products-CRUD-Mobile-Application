package com.efalco777.crud_products.domain.product.repository

import com.efalco777.crud_products.domain.product.model.Product
import com.efalco777.crud_products.domain.product.model.ProductDetails

interface ProductRepository {
   suspend fun getProductList():  List<Product>

   suspend fun getProductDetails(id: Int):  ProductDetails
}