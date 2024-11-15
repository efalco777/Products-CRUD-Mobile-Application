//
//  DomainToPresentationProductDetailsMapper.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

struct DomainToPresentationProductDetailsMapper {
    static func map(model: ProductDetails) -> PresentationProductDetails {
        return PresentationProductDetails(
            id: model.id,
            title: model.title,
            description: model.description,
            price: model.price,
            category: model.category,
            images: model.images
        )
    }
}
