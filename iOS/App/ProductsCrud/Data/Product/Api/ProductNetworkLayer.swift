//
//  ProductNetworkLayer.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//



class ProductNetworkLayerImpl{
    private let provider = MoyaProvider<ProductApi>()
    
    func getAllProducts() -> [ProductDTO] {
//        
//        URLSession.shared.dataTaskPublisher(for: <#T##URL#>)
//        
//      let lol =  provider.request(ProductApi.getProduct(productId: 1)) { result in
//            switch(result){
//            case let .failure(response):
//                do{};
//            case let .success(response):
//                do {
//                    let results = try JSONDecoder().decode([ProductDTO].self, from: response.data)
//                    
//                    results;
//                    
//                } catch let error {
//                    
//                }
//            }
//          
        
        }
        
        
        
     
        return [ProductDTO(id: 1, title: "a", description: "b", price: 1.0, category: "2", images: ["123"])];
    }
        
//        let products = try JSONDecoder().decode([ProductDTO].self, from: response.data)
//        return products
    
    
//    func getProduct(productId: Int) async throws -> ProductDTO {
//        let response = try await provider.request(.getProduct(productId: productId))
//        let product = try JSONDecoder().decode(ProductDTO.self, from: response.data)
//        return product
//    }
}
