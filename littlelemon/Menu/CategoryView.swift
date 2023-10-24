//
//  CategoryView.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//


import SwiftUI

struct CategoryView: View {
    let onCategorySelected: (Category) -> Void
    
    var body: some View {
        VStack {
            Text("Order for delivery!".uppercased())
                .font(Fonts.sectionTitle())
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 16)
                .padding(.horizontal, 16)
            ScrollView(.horizontal) {
                HStack(spacing: 1) {
                    ForEach(Category.allCases, id:\.self) { category in
                        Button(action: {
                            onCategorySelected(category)
                        }, label: {
                            Text(category.label)
                                .font(Fonts.labelText())
                                .foregroundColor(Colors.highlightColor2)
                                .padding(8)
                                .padding(.horizontal, 16)
                                .background(Color.gray)
                                .cornerRadius(8)
                        })
                        .padding(.trailing, 8)
                    }
                }
            }
            .padding(.bottom, 8)
            .padding(.horizontal, 16)
            Rectangle()
                .fill(Colors.highlightColor1.opacity(0.5))
                .frame(maxWidth: .infinity, maxHeight: 1)
        }
    }
}
