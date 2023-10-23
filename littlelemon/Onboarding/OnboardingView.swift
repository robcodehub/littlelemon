//
//  OnboardingView.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isLoggedIn: Bool
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: MainView(), isActive: $isLoggedIn) {
                    EmptyView()
                }
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.vertical, 20)
                HeroBanner()
                RegistrationForm(
                    firstName: $firstName,
                    lastName: $lastName,
                    email: $email,
                    isLoggedIn: $isLoggedIn
                )
                Spacer()
            }
        }
        .onAppear(){
            if UserDefaults.standard.bool(forKey: "IsLoggedInKey") {
                isLoggedIn = true
            }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    @State static var isLoggedIn = true
    
    static var previews: some View {
        OnboardingView(isLoggedIn: $isLoggedIn)
    }
}
