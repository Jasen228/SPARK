//
//  Libre.swift
//  Application
//
//  Created by apprenant91 on 30/10/2025.
//

internal import SwiftUI

//struct Libre: View {
    
//var body: some View {

    struct Libre: View {
        var body: some View {
            NavigationStack {
                ZStack {
                    Color.backSpark
                        .ignoresSafeArea()
                    ScrollView {
                        VStack(spacing: 20) {
                            ExtCategoryBox(category: .reflexion)
                            ExtCategoryBox(category: .intuition)
                            ExtCategoryBox(category: .creation)
                            ExtCategoryBox(category: .impulsion)
                        }
                        .padding()
                    }
                }
            }
        }
    }

#Preview {
    Libre()
}
