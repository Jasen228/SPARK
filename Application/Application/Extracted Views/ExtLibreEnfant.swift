//
//  ExtDesActivity.swift
//  Application
//
//  Created by apprenant91 on 31/10/2025.
//

internal import SwiftUI

struct ExtLibreEnfant: View {
    var creativity: Creativity

    var body: some View {
        ZStack {
            Color(creativity.back)
                .ignoresSafeArea()

            VStack {
                Spacer ()
                Text(creativity.activityName)
                    .momoSignature(size: 32)
                    .foregroundStyle(
                        LinearGradient(colors: [creativity.fore, creativity.fore.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .padding()

                ScrollView{
                    VStack(alignment: .leading) {
                        Spacer()
                        HStack{
                            Image(systemName: "leaf.fill")
                            Text("**Matériel nécessaire :**")
                            .momoSignature(size: 23)                        }
                        Divider()
                        ForEach(creativity.materials, id: \.self) { material in


                            HStack {
                                Image("\(material)")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                Text(material.rawValue)
                                    .momoTrust(size: 20)                                    .padding()
                            }
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "leaf.fill")
                            Text("**Descriptif :**")
                                .momoSignature(size: 23)
                                .padding(.vertical)
                        }
                        Divider()
                        Text(creativity.description)
                            .momoTrust(size: 20)

                        Spacer()

                    }

                }
                .foregroundStyle(.white)
                .padding()
                .background(creativity.fore.opacity(0.1))
                .cornerRadius(24)
                .padding()
                .background(creativity.fore.opacity(0.7))
                .cornerRadius(32)
                .padding()



            }
        }
    }
}
#Preview {
    ExtLibreEnfant(creativity:dataCreativity[17])
}
