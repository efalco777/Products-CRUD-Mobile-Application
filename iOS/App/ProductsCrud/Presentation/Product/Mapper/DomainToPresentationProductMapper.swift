//
//  DomainToPresentationProductMapper.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

struct DomainToPresentationProductMapper {
    static func map(model: Product) -> PresentationProduct {
        return PresentationProduct(
            id: model.id,
            title: model.title,
            description: model.description,
            price: model.price,
            category: model.category,
            images: model.images
        )
    }
}
