//
//  Extprofil.swift
//  AKB99
//
//  Created by apprenant97 on 03/11/2025.
//

internal import SwiftUI

struct EditableAlbumView: View {

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Anatole")
                    .momoSignature(size: 40)
                    .foregroundStyle(
                        LinearGradient(colors: [.redSpark, .blueSpark, .yellowSpark, .greenSpark], startPoint: .topTrailing, endPoint: .bottomLeading))
                    //.font(.title2)
                    .padding(.top, 40)
                    

                // Grille d’images
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(images) { item in
                        NavigationLink(destination: EditPhotoView(photo: item)) {
                            Image(item.name)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                                .background(Color.white)
                                .cornerRadius(12)
                                .shadow(radius: 4)
                        }
                    }
                }
                .padding(.horizontal)

                Spacer()

              
                .padding()
                .background(Color(.backSpark))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.backSpark))
        
        }
    }
}



// Vue de modification
struct EditPhotoView: View {
var photo: PhotoItem
var body: some View {
        VStack(spacing: 20) {
            Image(photo.name)
                .resizable()
                .scaledToFit()
                .frame(height: 500)
                .cornerRadius(16)
                .shadow(radius: 6)

            Text(photo.name)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color .backSpark)
        
    }
}

// Icône de navigation
#Preview {
    EditableAlbumView()
}
