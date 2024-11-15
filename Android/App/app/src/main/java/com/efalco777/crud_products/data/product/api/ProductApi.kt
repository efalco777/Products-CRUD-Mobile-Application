package com.efalco777.crud_products.data.product.api

import com.efalco777.crud_products.data.product.model.ProductDetailsDTO
import com.efalco777.crud_products.data.product.model.ProductsDTO
import retrofit2.http.GET
import retrofit2.http.Path

interface ProductApi {
    @GET("products")
    suspend fun getProductList(): ProductsDTO

    @GET("products/{id}")
    suspend fun getProductDetails(@Path("id") postId: Int): ProductDetailsDTO
}


