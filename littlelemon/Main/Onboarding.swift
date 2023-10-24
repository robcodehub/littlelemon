//
//  MainView.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//

import SwiftUI

struct Onboarding: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination:MenuView(), isActive: $isLoggedIn) {
                        EmptyView()
                    }
                if !UserSettings.shared.isLoggedIn {
                    OnboardingView(isLoggedIn: $isLoggedIn)
                }
            }
            
        }
        .onAppear(){
            if UserDefaults.standard.bool(forKey: "IsLoggedInKey") {
                isLoggedIn = true
            }
        }
        .navigationBarHidden(true)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
