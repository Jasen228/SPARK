//
//  GridAlbumView.swift
//  Spark2
//
//  Created by apprenant91 on 05/11/2025.
//

internal import SwiftUI

struct GridAlbumView: View {

    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var childSelected: Profile

    var body: some View {

        ZStack {

            Color.backSpark
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text(childSelected.personName)
                    .momoTrust(size: 24)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .redSpark, .blueSpark, .yellowSpark,
                                .greenSpark,
                            ],
                            startPoint: .topTrailing,
                            endPoint: .bottomLeading
                        )
                    )
                    .padding(.top, 50)

                if filteredAlbumByChild(child: childSelected).count <= 6 {
                    // Grille d’images
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(filteredAlbumByChild(child: childSelected)) {
                            childAlbum in

                            NavigationLink {
                                //                        EditPhotoView(photo: item)

                                ZStack {
                                    Color.backSpark
                                        .ignoresSafeArea()

                                    VStack {
                                        Image(childAlbum.image)

                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(12)
                                            .shadow(radius: 4)
                                            .padding()

                                        Text(childAlbum.date)
                                            .momoTrust(size: 24)
                                    }
                                }
                            } label: {
                                Image(childAlbum.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .background(Color.white)
                                    .cornerRadius(12)
                                    .shadow(radius: 4)
                            }
                        }
                    }
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(filteredAlbumByChild(child: childSelected))
                            { childAlbum in

                                NavigationLink {
                                    //                        EditPhotoView(photo: item)
                                } label: {
                                    Image(childAlbum.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                        .background(Color.white)
                                        .cornerRadius(12)
                                        .shadow(radius: 4)
                                }
                            }
                        }
                    }
                }
                Spacer()

            }
        }
    }
}

#Preview {
    GridAlbumView(childSelected: dataProfile[1])
}
