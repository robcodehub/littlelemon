//
//  MenuViewModel.swift
//  littlelemon
//
//  Created by @robcodehub on 24/10/2023.
//


import Foundation
import CoreData

class MenuViewModel: ObservableObject {
    private let networkURLString = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json"
    
    @MainActor
    func getMenuData(context: NSManagedObjectContext) async throws {
        let url = URL(string: networkURLString)!
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let menuList = try JSONDecoder().decode(MenuList.self, from: data)
            Dish.createDishesFrom(menuItems: menuList.menu, context)
            try? context.save()
        } catch {
            throw error
        }
    }
}
