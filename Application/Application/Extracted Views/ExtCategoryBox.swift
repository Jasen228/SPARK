//
//  CategoryBox.swift
//  Application
//
//  Created by apprenant102 on 05/11/2025.
//

internal import SwiftUI

struct ExtCategoryBox: View {
    let category: Category
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(category.rawValue)
                .momoSignature(size: 28)
                .bold()
                .foregroundStyle(getCategoryColor(for: category))
                .padding(.horizontal, 16)
                .padding(.top, 8)
            
            VStack(spacing: 8) {
                ForEach(filteredCreativityByCategory(category: category)) { creativity in
                    NavigationLink {
                        ExtLibreEnfant(creativity: creativity)
                    } label: {
                        ExtLibre(creativity: creativity)
                    }
                }
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.1))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(getCategoryColor(for: category), lineWidth: 4)
                .padding(4)
        )
        .shadow(color: getCategoryColor(for: category).opacity(0.3), radius: 8, x: 0, y: 4)
    }
}
    #Preview {
        ExtCategoryBox(category: .impulsion)
    }
