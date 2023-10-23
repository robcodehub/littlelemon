//
//  littlelemonApp.swift
//  littlelemon
//
//  Created by robcodehub on 23/10/2023.
//

import SwiftUI

@main
struct littlelemonApp: App {
    let persistence = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistence.container.viewContext)
        }
    }
}
