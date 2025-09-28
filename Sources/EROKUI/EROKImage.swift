//
//  EROKImage.swift
//  The Shift
//
//  Created by Fabien Koré on 28/09/2025.
//


// Sources/EROKUI/EROKImage.swift
// E-ROK-Package
//
// Created by Fabien Koré on 28/09/2025.

import SwiftUI

public struct EROKImage: View {
    let imageName: String

    public init(imageName: String) {
        self.imageName = imageName
    }

    public var body: some View {
        Image(imageName, bundle: .main)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    EROKImage(imageName: "E-ROK_CLUB_TEXT")
        .frame(width: 300, height: 300)
}
