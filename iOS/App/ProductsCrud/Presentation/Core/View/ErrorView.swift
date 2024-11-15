//
//  ErrorView.swift
//  ProductsCrud
//
//  Created by Emil Falkowski on 12/11/2024.
//

import SwiftUI

struct ErrorView: View {
    let error: Error
    let retryAction: () -> Void 
    
    var body: some View {
        VStack {
            Text("An error occurred")
                .font(.headline)
                .padding()
            Text(error.localizedDescription)
                .foregroundColor(.red)
                .padding()
            Button("Retry") {
                retryAction()
            }
        }
    }
}
