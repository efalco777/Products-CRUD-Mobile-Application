//
//  DataModule.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation
import os

class DataModule: AppModule {
    func registerDependencies() {
        Injector.container.register(RequestBuilder.self) { resolver in
            let environment = resolver.resolve(Environment.self)!

            return RequestBuilder(environment: environment)
        }
        
        Injector.container.register(JSONDecoder.self) { _ in
            JSONDecoder.create()
        }
        
        Injector.container.register(HTTPDataDownloader.self) { _ in
            URLSession.shared
        }

        Injector.container.register(HTTPClient.self) { resolver in
            let downloader = resolver.resolve(HTTPDataDownloader.self)!
            let builder = resolver.resolve(RequestBuilder.self)!
            let decoder = resolver.resolve(JSONDecoder.self)!
            return HTTPClient(
                downloader: downloader,
                requestBuilder: builder,
                jsonDecoder: decoder)
        }

        Injector.container.register(ProductApi.self) { resolver in
            let client = resolver.resolve(HTTPClient.self)!
            return ProductApi(client: client)
        }

        Injector.container.register(ProductRepository.self) { resolver in
            let api = resolver.resolve(ProductApi.self)!
            return ProductRemoteRepository(api: api)
        }

    }
}
