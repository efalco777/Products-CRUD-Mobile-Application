//
//  ApiError.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation

enum APIError: Error {
    case networkError(Error)
    case decoding
    case invalidUrl
    case invalidResponse
    case statusCode(Int)
}
