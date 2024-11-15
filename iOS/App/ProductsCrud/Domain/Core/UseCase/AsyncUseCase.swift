//
//  AsyncUseCase.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

protocol AsyncUseCase: UseCase {
    func execute(_ input: Input) async throws -> Output
}
