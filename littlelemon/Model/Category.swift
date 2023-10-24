//
//  Category.swift
//  littlelemon
//
//  Created by @robcodehub on 24/10/2023.
//

import Foundation

enum Category: CaseIterable {
    case all
    case starters
    case mains
    case desserts
    case sides
    
    var label: String {
        switch self {
        case .all:
            return "All"
        case .starters:
            return "Starters"
        case .mains:
            return "Mains"
        case .desserts:
            return "Desserts"
        case .sides:
            return "Sides"
        }
    }
    
    var value: String {
        switch self {
        case .all:
            return "all"
        case .starters:
            return "starters"
        case .mains:
            return "mains"
        case .desserts:
            return "desserts"
        case .sides:
            return "sides"
        }
    }
}
