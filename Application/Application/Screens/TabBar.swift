//
//  TabBar.swift
//  Application
//
//  Created by apprenant102 on 30/10/2025.
//

internal import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            CreationSpaceView()
                .tabItem {
                    Text("Jeux")
                    Image("palette")
                }
            Libre()
                .tabItem {
                    Text("Libre")
                    Image("idee")

                }
            AlbumView()
                .tabItem {
                    Text("Album")
                    Image("carnet")
                }
            Profiles()
                .tabItem {
                    Text("Profil")
                    Image("ordinateur")
                }

        }
    }
}

#Preview {
    TabBar()
}
