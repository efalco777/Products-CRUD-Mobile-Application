//
//  environment.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 05/11/2024.
//

import Foundation

private enum EnvironmentKey: String {
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"

    case debugStaging = "Debug Staging"
    case releaseStaging = "Release Staging"

    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

struct Environment {
    let baseURL: URL
    let environmentName: String

    private init(baseURL: URL, environmentName: String) {
        self.baseURL = baseURL
        self.environmentName = environmentName

    }

    static func create() -> Environment {
        let currentConfiguration =
            Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        let environment = EnvironmentKey(rawValue: currentConfiguration)!

        switch environment {
        case .debugDevelopment, .releaseDevelopment:
            return Environment(
                baseURL: URL(string: "https://dummyjson.com")!,
                environmentName: "Development"
            )
        case .debugStaging, .releaseStaging:
            return Environment(
                baseURL: URL(string: "https://dummyjson.com")!,
                environmentName: "Staging"
            )
        case .debugProduction, .releaseProduction:
            return Environment(
                baseURL: URL(string: "https://dummyjson.com")!,
                environmentName: "Production"
            )
        }
    }
}
