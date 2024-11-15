//
//  RequestBuilder.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation

class RequestBuilder {
    private let environment: Environment
    
    init(environment: Environment) {
        self.environment = environment
    }
    
    func makeRequest(from endpoint: Endpoint) throws -> URLRequest {
        let url = try makeUrl(from: endpoint)
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.httpBody = makeBody(from: endpoint.params)
        return request
    }

    private func makeBody(from params: [String: Any]?) -> Data? {
        guard let params, !params.isEmpty else {
            return nil
        }
        return try? JSONSerialization.data(withJSONObject: params)
    }

    private func makeUrl(from endpoint: Endpoint) throws -> URL {
        var components = URLComponents()
        components.scheme = environment.baseURL.scheme
        components.host =  environment.baseURL.host
        components.path = endpoint.path
        guard let url = components.url else {
            throw APIError.invalidUrl
        }
        return url
    }
}
