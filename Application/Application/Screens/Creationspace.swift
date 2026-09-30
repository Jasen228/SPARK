//
//  Creationspace.swift
//  AKB99
//
//  Created by apprenant97 on 30/10/2025.
//

internal import SwiftUI

// Vue principale
struct CreationSpaceView: View {
    var body: some View {
        NavigationStack {

            ZStack {
                Color.backSpark
                    .ignoresSafeArea()

                VStack{
                        Text("Spark!")
                            .momoSignature(size: 40)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .redSpark, .blueSpark,
                                        .yellowSpark, .greenSpark,
                                    ],
                                    startPoint: .topTrailing,
                                    endPoint: .bottomLeading
                                )
                            )
                            .offset(y: 120)
                    
//                    Text("SPARK !")
//                        .momoSignature(size: 40)
//                    
                    ForEach(dataCircle) {
                        circlelabel in

                        ExtCircle(circlelabel: circlelabel)

                    }
             
                }
                
            }

        }

    }

}

#Preview {
    CreationSpaceView()
}


/*
 VStack {
                 // TITRE
                 Text("Espace Création")
                     .font(.custom("Momo trust display", size: 36))
                     .bold()
                     .foregroundStyle(.white)
                     .frame(maxWidth: .infinity)
                     .padding(.top, 20)
                     .padding(.bottom, 10)
                 
                 Spacer()
                 
                 ForEach(dataCircle) {
                     circlelabel in
                     ExtCircle(circlelabel: circlelabel)
                 }
                 
                 Spacer()
 */
