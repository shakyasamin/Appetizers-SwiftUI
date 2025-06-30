//
//  Alert.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 30/06/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id: UUID = UUID()
    var title: String
    var message: String
    var dismissButtonTitle: String?
}
