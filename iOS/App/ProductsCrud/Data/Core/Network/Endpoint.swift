//
//  Endpoint.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

protocol Endpoint {
    var path: String { get }
    var method: HTTPMethod { get }
    var params: [String: Any]? { get }
}
