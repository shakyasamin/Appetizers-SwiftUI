//
//  User.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 01/07/2025.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequestRefill = false
}
