//
//  PresentationModule.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

class PresentationModule: AppModule {
    func registerDependencies() {
        Injector.container.register(ProductsViewModel.self) { resolver in
            let useCase = resolver.resolve(GetProductsUseCase.self)!
            return ProductsViewModel(useCase: useCase)
        }
        
        Injector.container.register(ProductDetailsViewModel.self) { resolver in
            let useCase = resolver.resolve(GetProductDetailsUseCase.self)!
            return ProductDetailsViewModel(useCase: useCase)
        }
    }
}
