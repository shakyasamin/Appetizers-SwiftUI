//
//  OrderView.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 29/06/2025.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List{
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("OrderPlaced")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                    
                }
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "Your have no items in your order.\n Please add an appetizer!")
                }
                
            }
            
            .navigationTitle("🧾 Orders")
        }
    }
    func deleteItems(at offsets : IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
