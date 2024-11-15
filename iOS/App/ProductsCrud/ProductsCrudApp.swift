//
//  ProductsCrudApp.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 28/10/2024.
//

import SwiftData
import SwiftUI

@main
struct ProductsCrudApp: App {

    @MainActor @preconcurrency init() {
        Injector.registerDependencies(from: [
            DataModule(),
            DomainModule(),
            PresentationModule(),
        ])
    }

    var body: some Scene {
        WindowGroup {
            ProductsView()
        }
    }
}
