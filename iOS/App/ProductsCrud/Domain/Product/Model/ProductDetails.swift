//
//  ProductDetails.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

struct ProductDetails: Identifiable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let category: String
    let images: [String]
}
