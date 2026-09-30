//
//  AlbumView.swift
//  Spark2
//
//  Created by apprenant91 on 05/11/2025.
//

internal import SwiftUI

struct AlbumView: View {
    var body: some View {
        NavigationStack {
            ZStack {

                Color.backSpark
                    .ignoresSafeArea()

                VStack {
                    VStack(spacing: 30) {

                        Spacer()
                        Text("Mon Album")
                            .momoSignature(size: 40)
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
                            .padding()

                        VStack(alignment: .leading, spacing: 2) {

                            Text(dataProfile[1].personName)
                                .momoTrust(size: 24)
                                .foregroundStyle(.black)
                                .font(.headline)
                                .padding(.leading)

                            ScrollView(.horizontal, showsIndicators: false) {

                                NavigationLink {

                                    GridAlbumView(childSelected: dataProfile[1])
                                } label: {
                                    HStack(spacing: 12) {
                                        ForEach(
                                            filteredAlbumByChild(
                                                child: dataProfile[1]
                                            )
                                        ) { enfant in

                                            VStack {
                                                Image(enfant.image)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(
                                                        width: 60,
                                                        height: 120
                                                    )
                                                    .cornerRadius(12)
                                                    .shadow(radius: 2)

                                            }
                                            .padding(.bottom)
                                            .foregroundColor(.black)
                                        }
                                    }

                                }
                                .padding()
                            }

                            Text(dataProfile[3].personName)
                                .momoTrust(size: 24)
                                .foregroundStyle(.black)
                                .font(.headline)
                                .padding(.leading)

                            ScrollView(.horizontal, showsIndicators: false) {

                                NavigationLink {
                                    GridAlbumView(childSelected: dataProfile[3])
                                } label: {
                                    HStack(spacing: 12) {
                                        ForEach(
                                            filteredAlbumByChild(
                                                child: dataProfile[3]
                                            )
                                        ) { enfant in

                                            VStack {
                                                Image(enfant.image)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(
                                                        width: 60,
                                                        height: 120
                                                    )
                                                    .cornerRadius(12)
                                                    .shadow(radius: 4)

                                            }
                                            .padding(.bottom)
                                        }
                                    }

                                }

                            }
                            .padding()

                            Spacer()

                        }

                    }

                }

                .padding(.bottom)

            }
            .foregroundColor(.black)

        }
    }

}

#Preview {
    AlbumView()
}
