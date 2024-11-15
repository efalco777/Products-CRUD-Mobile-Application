//
//  ProductDTOToProductMapper.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

struct DataToDomainProductsMapper {
    static func map(model: ProductsDTO) -> [Product] {
        return model.products.map { DataToDomainProductMapper.map(model: $0) }
    }
}
