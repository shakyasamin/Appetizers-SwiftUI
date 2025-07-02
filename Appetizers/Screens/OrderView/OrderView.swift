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
            VStack{
                List{
                    ForEach(MockData.orderItems) { appetizer in
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
