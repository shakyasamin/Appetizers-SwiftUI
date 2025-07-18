//
//  EmptyState.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 02/07/2025.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName:  String
    let message: String
    
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame( height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message.\nI'm making a little long for a testing.")
}
