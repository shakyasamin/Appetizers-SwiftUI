//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 29/06/2025.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers){ appetizer in
               AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
  
}

#Preview {
    AppetizerListView()
}
