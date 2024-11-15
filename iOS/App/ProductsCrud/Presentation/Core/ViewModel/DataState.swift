//
//  DataState.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 11/11/2024.
//

enum DataState : Equatable{
    case loading
    case loaded
    case error(Error)
    
    static func ==(lhs: DataState, rhs: DataState) -> Bool {
         switch (lhs, rhs) {
         case (.loading, .loading):
             return true
         case (.loaded, .loaded):
             return true
         case (.error(let lhsError), .error(let rhsError)):
             // Compare the localized descriptions or any other properties of the errors
             return lhsError.localizedDescription == rhsError.localizedDescription
         default:
             return false
         }
     }
}
