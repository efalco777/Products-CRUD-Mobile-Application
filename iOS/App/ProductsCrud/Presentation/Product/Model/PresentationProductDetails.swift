//
//  PresentationProductDetails.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

struct PresentationProductDetails: Identifiable, Equatable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let category: String
    let images: [String]

    static func empty() -> PresentationProductDetails {
        return PresentationProductDetails(
            id: 0,
            title: "",
            description: "",
            price: 0.0,
            category: "",
            images: []
        )
    }
}
