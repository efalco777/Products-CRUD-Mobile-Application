//
//  HTTPClient.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

import Foundation

class HTTPClient {
    private let downloader: HTTPDataDownloader
    private let requestBuilder: RequestBuilder
    private let jsonDecoder: JSONDecoder

    init(
        downloader: HTTPDataDownloader,
        requestBuilder: RequestBuilder,
        jsonDecoder: JSONDecoder
    ) {
        self.downloader = downloader
        self.requestBuilder = requestBuilder
        self.jsonDecoder = jsonDecoder
    }

    @discardableResult
    func data(from endpoint: Endpoint) async throws -> Data {
        let request = try requestBuilder.makeRequest(from: endpoint)
        return try await downloader.httpData(for: request)
    }

    func data<T: Decodable>(from endpoint: Endpoint) async throws -> T {
        let request = try requestBuilder.makeRequest(from: endpoint)
        let data = try await downloader.httpData(for: request)

        return try jsonDecoder.decode(from: data)
    }
}
