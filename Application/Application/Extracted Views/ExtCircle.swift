//
//  ExtCircle.swift
//  Spark
//
//  Created by apprenant91 on 03/11/2025.
//

internal import SwiftUI

struct ExtCircle: View {
    
    @State var randomIndex: Int = Int.random(in: 0...9)
    
    var circlelabel: CircleLabel
    var body: some View {
        NavigationLink {
            ExtLibreEnfant(creativity: filteredCreativityByCategory(category: circlelabel.category )[randomIndex])
        } label: {
            ZStack {
                Circle()
                    .foregroundStyle(circlelabel.color)
                Text(circlelabel.text)
                    .momoSignature(size: 32)                    .foregroundStyle(.white)
            }.frame(height:200)
                .shadow(color: circlelabel.color, radius: 0.5)
                
        }.offset(x: CGFloat(circlelabel.axex), y: CGFloat(circlelabel.axey))

            .onAppear {
                randomIndex = Int.random(in: 0...9)
            }
        
    }
}

#Preview {
    ExtCircle(circlelabel: dataCircle[1])
}
