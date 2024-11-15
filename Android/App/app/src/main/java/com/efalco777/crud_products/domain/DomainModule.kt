package com.efalco777.crud_products.domain

import com.efalco777.crud_products.domain.product.repository.ProductRepository
import com.efalco777.crud_products.domain.product.use_case.GetProductDetailsUseCase
import com.efalco777.crud_products.domain.product.use_case.GetProductsUseCase
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object DomainModule {

    @Singleton
    @Provides
    fun provideGetProductsUseCase(productRepository: ProductRepository): GetProductsUseCase {
        return GetProductsUseCase(productRepository)
    }

    @Singleton
    @Provides
    fun provideGetProductDetailsUseCase(productRepository: ProductRepository): GetProductDetailsUseCase {
        return GetProductDetailsUseCase(productRepository)
    }
}