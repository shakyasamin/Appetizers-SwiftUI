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
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard  !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty  else {
            alertItem = AlertContext.invalidForm
            return false
        }
            
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("change have been saved")
         
    }
}
