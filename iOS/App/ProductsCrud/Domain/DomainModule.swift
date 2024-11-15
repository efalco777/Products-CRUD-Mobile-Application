//
//  DomainModule.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

class DomainModule: AppModule {
    func registerDependencies() {
        Injector.container.register(GetProductDetailsUseCase.self) { resolver in
            let repository = resolver.resolve(ProductRepository.self)!
            return GetProductDetailsUseCase(repository: repository)
        }

        Injector.container.register(GetProductsUseCase.self) { resolver in
            let repository = resolver.resolve(ProductRepository.self)!
            return GetProductsUseCase(repository: repository)
        }
    }
}
