//
//  Product.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 29/10/2024.
//

struct Product: Identifiable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let category: String
    let images: [String]
}
