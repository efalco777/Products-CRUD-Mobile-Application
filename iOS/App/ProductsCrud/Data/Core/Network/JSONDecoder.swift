//
//  Untitled.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation
import os

extension JSONDecoder {
    private static let logger = Logger.create(for: JSONDecoder.self)

    static func create() -> JSONDecoder {
        let aDecoder = JSONDecoder()
        aDecoder.dateDecodingStrategy = .millisecondsSince1970
        return aDecoder
    }

    func decode<T: Decodable>(from data: Data) throws -> T {
        do {
            return try self.decode(T.self, from: data)
        } catch let DecodingError.dataCorrupted(context) {
            Self.logger.error("Data corrupted.")
            Self.logger.error("Context context: '\(context.debugDescription)'")
            throw APIError.decoding
        } catch let DecodingError.keyNotFound(key, context) {
            Self.logger.error("Key not found.")
            Self.logger.error("Key: '\(key.stringValue)'")
            Self.logger.error("Context: '\(context.debugDescription)'")
            throw APIError.decoding
        } catch let DecodingError.valueNotFound(value, context) {
            Self.logger.error(
                "Value '\(value)' not found: '\(context.debugDescription)'")
            Self.logger.error("codingPath: \(context.codingPath)")
            throw APIError.decoding
        } catch let DecodingError.typeMismatch(type, context) {
            Self.logger.error(
                "Type '\(type)' mismatch: '\(context.debugDescription)'")
            Self.logger.error("codingPath: \(context.codingPath)")
            throw APIError.decoding
        } catch {
            Self.logger.error("error: '\(error)'")
            throw APIError.decoding
        }
    }
}
