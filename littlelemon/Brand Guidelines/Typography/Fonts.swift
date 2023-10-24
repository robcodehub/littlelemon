//
//  Fonts.swift
//  littlelemon
//
//  Created by @robcodehub on 24/10/2023.
//

import Foundation
import SwiftUI

struct Fonts {
    static var displayFont: Font {
        return Font.custom("Times", size: 48).weight(.medium)
    }
    
    static func subTitleFont() -> Font {
        return Font.custom("Times", size: 32).weight(.medium)
    }
    
    static func leadText() -> Font {
        return Font.system(size: 16, weight: .medium, design: .default)
    }
    
    static func labelText() -> Font {
        return Font.system(size: 16, weight: .bold, design: .default)
    }
    
    static func regularText() -> Font {
        return Font.custom("Times", size: 18)
    }
    
    static func sectionTitle() -> Font {
        return Font.system(size: 18, weight: .black, design: .default)
    }
    
    static func sectionCategories() -> Font {
        return Font.system(size: 18, weight: .heavy, design: .default)
    }
    
    static func paragraphText() -> Font {
        return Font.system(size: 14, weight: .medium, design: .default)
    }
    
    static func highlightText() -> Font {
        return Font.system(size: 14, weight: .medium, design: .default)
    }
}
