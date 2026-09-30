//
//  jeuxLibre.swift
//  Application
//
//  Created by apprenant91 on 30/10/2025.
//

internal import SwiftUI

struct ExtLibre: View {
    var creativity: Creativity
    var body: some View {
        HStack {
            Image(systemName: "play.circle.fill")
                .font(.title3)
            Text(creativity.activityName)
                .momoTrust(size: 20)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.caption)
        }
        .foregroundStyle(.white)
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(creativity.fore.opacity(0.2))
        )
    }
}

#Preview {
    ExtLibre(creativity: dataCreativity[0])
}

