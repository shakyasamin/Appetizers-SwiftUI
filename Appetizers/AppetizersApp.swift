//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 29/06/2025.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
