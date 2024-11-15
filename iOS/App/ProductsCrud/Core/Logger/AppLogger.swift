//
//  AppLogger.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation
import os

extension Logger {
    static func create<T>(for type: T.Type) -> Logger {
        return Logger(
            subsystem: Bundle.main.bundleIdentifier!,
            category: String(describing: T.self)
        )
    }
}
