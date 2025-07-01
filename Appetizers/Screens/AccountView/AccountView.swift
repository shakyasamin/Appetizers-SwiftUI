//
//  AccountView.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 29/06/2025.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthDate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequently Refill", isOn: $viewModel.frequestRefill)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimaryColor))

                
            }
            .navigationTitle("🤣 Accounts")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    AccountView()
}
