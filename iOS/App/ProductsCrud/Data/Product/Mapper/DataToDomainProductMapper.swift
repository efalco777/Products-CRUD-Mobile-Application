//
//  ProductDTOToProductMapper.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

struct DataToDomainProductMapper {
    static func map(model: ProductDTO) -> Product {
        return Product(
            id: model.id,
            title: model.title,
            description: model.description,
            price: model.price,
            category: model.category,
            images: model.images
        )
    }
}
