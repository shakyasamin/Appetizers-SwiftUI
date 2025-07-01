//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 01/07/2025.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthDate = Date()
    @Published var extraNapkins = false
    @Published var frequestRefill = false
}
