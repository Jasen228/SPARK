//
//  Profiles.swift
//  Application
//
//  Created by apprenant102 on 31/10/2025.
//

internal import SwiftUI

struct Profiles: View {
    let rows = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.backSpark)
                    .ignoresSafeArea()

                VStack {

                    Text("Ma Famille")
                        .momoSignature(size: 40)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .redSpark, .blueSpark,
                                    .yellowSpark, .greenSpark,
                                ],
                                startPoint: .topTrailing,
                                endPoint: .bottomLeading
                            ))

                    LazyHGrid(rows: rows, spacing: 40) {

                        ForEach(dataProfile) {
                            value in

                            NavigationLink {

                                ExtProfile(profile: value)

                            } label: {

                                VStack {
                                    Image(value.icon)
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                        .padding()

                                    Text(value.surname)
                                        .momoSignature(size: 18)
                                        .foregroundStyle(.black)
                                }
                            }

                        }
                    }
                    .frame(height: 400)

                }
            }
        }
    }
}
#Preview {
    Profiles()
}
