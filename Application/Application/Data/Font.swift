//
//  Font.swift
//  Application
//
//  Created by apprenant102 on 04/11/2025.
//

internal import SwiftUI


extension View {
    func momoSignature(size: CGFloat) -> some View {
        self.font(.custom("MomoSignature-Regular", size: size))
    }
    func momoTrust(size: CGFloat) -> some View {
        self.font(.custom("MomoTrustDisplay-Regular", size: size))
    }
}
