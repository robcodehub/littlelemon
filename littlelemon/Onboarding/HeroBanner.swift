//
//  HeroBanner.swift
//  littlelemon
//
//  Created by @robcodehub on 24/10/2023.
//

import SwiftUI

struct HeroBanner: View {
    
    let heroTitle = "Little Lemon"
    let heroLocation = "Chicago"
    let heroDescription = "We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.";
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(heroTitle)
                .font(Fonts.displayFont)
                .foregroundColor(Colors.primaryColor2)
            Text(heroLocation)
                .font(Fonts.subTitleFont())
                .foregroundColor(Colors.highlightColor1)
            HStack(spacing: 0) {
                Text(heroDescription)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(Fonts.leadText())
                    .foregroundColor(Colors.highlightColor1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing, 16)
                Image("hero-image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: 140)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.bottom, 8)
        }
        .padding(12)
        .background(Colors.primaryColor1)
    }
}

struct HeroBanner_Previews: PreviewProvider {
    static var previews: some View {
        HeroBanner()
    }
}
