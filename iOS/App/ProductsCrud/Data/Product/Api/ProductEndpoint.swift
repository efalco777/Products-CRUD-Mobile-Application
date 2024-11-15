//
//  ProductEndpoint.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation

enum ProductEndpoint {
    case products
    case product(id: Int)
}

extension ProductEndpoint: Endpoint {
    var path: String {
        switch self {
        case .products:
            return "/product"
        case .product(let id):
            return "/product/\(id)"
        }
    }

    var method: HTTPMethod {
        switch(self) {
        case .products, .product:
            return .get
        }
    }

    var params: [String: Any]? {
        nil
    }
}
