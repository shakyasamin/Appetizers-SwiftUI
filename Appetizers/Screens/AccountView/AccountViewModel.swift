//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 01/07/2025.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch {
            alertItem = AlertContext.InvalidUserData
        }
         
    }
    
    func retriveUser() {
        guard let userData else { return }
        
        do {
            user =  try JSONDecoder().decode(User.self, from: userData)
        }catch {
            alertItem = AlertContext.InvalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard  !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty  else {
            alertItem = AlertContext.invalidForm
            return false
        }
            
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
 
}
