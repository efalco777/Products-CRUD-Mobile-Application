//
//  di.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 03/11/2024.
//

import Swinject

class Injector {
    public static let container = Container()

    static func registerDependencies(from modules: [AppModule]) {
        container.register(Environment.self) { _ in Environment.create() }

        for module in modules {
            module.registerDependencies()
        }
    }
}
