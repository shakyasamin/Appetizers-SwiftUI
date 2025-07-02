//
//  Alert.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 30/06/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id: UUID = UUID()
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem( title: Text("Server Error"), message: Text("The data received from the server was invalid.Please contact support team"), dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem( title: Text("Server Error"), message: Text("Invalid response from the server.Please try again later or contact support"), dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem( title: Text("Server Error"), message: Text("There was an issue connecting to the server.If this persists, Please contact support"), dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem( title: Text("Server Error"), message: Text("Unable to complete your request at this time.Please check your internet request"), dismissButton: .default(Text("OK")))
    //MARK : - Account Alerts
    static let invalidForm = AlertItem( title: Text("Invalid FOrm"), message: Text("Please ensure all field in the form have been filled out correctly"), dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem( title: Text("Invalid Email"), message: Text("Please ensure your email is correct"), dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem( title: Text("Profile Saved"), message: Text("Your Profile information was successfully saved."), dismissButton: .default(Text("OK")))
    static let InvalidUserData = AlertItem( title: Text("Profile Email"), message: Text("There was an error saving or retrieving your profile."), dismissButton: .default(Text("OK")))

}
