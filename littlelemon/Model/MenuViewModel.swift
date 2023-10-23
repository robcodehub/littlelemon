//
//  MenuViewModel.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//


import Foundation
import CoreData

class MenuViewModel: ObservableObject {
    private let networkURLString = "https://github.com/robcodehub/littlelemon/blob/06f18b513e53107b8fe18248702a7ee5410a9518/littlelemon/Menu/Data/menu.json"
    
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
