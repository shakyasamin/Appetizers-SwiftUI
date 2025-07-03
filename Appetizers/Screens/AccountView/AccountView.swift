//
//  AccountView.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 29/06/2025.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedtextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedtextField, equals: .firstName)
                        .onSubmit {
                            focusedtextField = .lastName
                        }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedtextField, equals: .lastName)
                        .onSubmit {
                            focusedtextField = .email
                        }
                        .submitLabel(.next)

                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedtextField, equals: .email)
                        .onSubmit {
                            focusedtextField = nil
                        }
                        .submitLabel(.continue)

                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequently Refill", isOn: $viewModel.user.frequestRefill)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimaryColor))
                
                
            }
            .navigationTitle("🤣 Accounts")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") {
                        focusedtextField = nil
                    }
                }
            }
        }
        .onAppear{
            viewModel.retriveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
