//
//  MenuStruct.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//

import Foundation

struct MenuList: Codable {
    let menu: [MenuItem]
    
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
}

struct MenuItem: Codable, Hashable, Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let image: String
    let price: String
    let category: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "description"
        case image = "image"
        case price = "price"
        case category = "category"
    }
}
