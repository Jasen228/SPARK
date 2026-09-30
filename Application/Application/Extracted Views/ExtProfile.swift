//
//  ExtProfile.swift
//  Application
//
//  Created by apprenant102 on 30/10/2025.
//

internal import SwiftUI

struct ExtProfile: View {
    var profile: Profile
    var body: some View {
        ZStack {
            Color(.backSpark)
                .ignoresSafeArea()

            VStack {
                HStack {
                    Image(profile.icon)
                        .resizable()
                        .frame(width: 250, height: 250)

                }

                .padding(50)
                Text(profile.personName)
                    .momoSignature(size: 32)
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
                if profile.age <= 12 {
                    Text("\(Int(profile.age))  ans")
                        .momoTrust(size: 20)
                        .foregroundStyle(.black)

                }

                Text(profile.surname)
                    .momoTrust(size: 20)
                    .foregroundStyle(.black)

                    .padding()
            }

        }

    }
}

#Preview {
    ExtProfile(profile: dataProfile[3])
}
