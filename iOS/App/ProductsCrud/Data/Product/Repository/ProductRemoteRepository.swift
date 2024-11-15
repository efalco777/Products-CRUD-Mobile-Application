struct ProductRemoteRepository: ProductRepository {
    private let api: ProductApi

    init(api: ProductApi) {
        self.api = api
    }

    func getProduct(id: Int) async throws -> ProductDetails {
        let result = try await api.getProduct(id: id)

        return DataToDomainProductDetailsMapper.map(model: result)
    }

    func getProducts() async throws -> [Product] {
        let result = try await api.getProducts()

        return DataToDomainProductsMapper.map(model: result)
    }
}
