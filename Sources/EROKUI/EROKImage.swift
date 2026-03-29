//
//  EROKImage.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 28/09/2025.
//



import SwiftUI
import UIKit

public struct EROKImage: View {
    let imageName: String

    public init(imageName: String) {
        self.imageName = imageName
    }

    public var body: some View {
        if let uiImage = UIImage(named: imageName, in: .module, with: nil) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
        } else if let path = Bundle.module.path(forResource: imageName, ofType: "png"),
                  let uiImage = UIImage(contentsOfFile: path) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
        } else {
            Image(systemName: "photo.badge.exclamationmark")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
        }
    }
}

#Preview {
    EROKImage(imageName: "E-ROK_CLUB_TEXT")
        .frame(width: 100, height: 100)
}
