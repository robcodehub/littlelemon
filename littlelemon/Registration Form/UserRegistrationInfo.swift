//
//  UserRegistrationInfo.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//

import SwiftUI

struct UserRegistrationInfo: View {
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var email: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Personal Information")
                .font(Fonts.sectionTitle())
                .padding(.bottom, 16)
            
            Text("First Name")
                .textStyle()
            TextField("", text: $firstName)
                .textFieldStyle()
            
            Text("Last Name")
                .textStyle()
            TextField("", text: $lastName)
                .textFieldStyle()
            
            Text("Email")
                .textStyle()
            TextField("", text: $email)
                .textFieldStyle()
                .keyboardType(.emailAddress)
        }
        .padding()
        .onAppear() {
            getProfile()
        }
    }
    
    func getProfile() {
        let userSettings = UserSettings.shared
        firstName = userSettings.firstName
        lastName = userSettings.lastName
        email = userSettings.email
    }
}
