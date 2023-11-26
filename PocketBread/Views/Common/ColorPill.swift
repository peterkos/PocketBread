//
//  ColorPill.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import SwiftUI

struct ColorPill: View {
    let value: String
    let foregroundColor: Color
    let backgroundColor: Color

    init(
        value: String,
        foregroundColor: Color = .white,
        backgroundColor: Color = .gray
    ) {
        self.value = value
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
    }

    var body: some View {
        Text(value)
            .padding(.horizontal, 6)
            .padding(.bottom, 2) // grr, line height
            .font(.body.smallCaps())
            .foregroundStyle(foregroundColor)
            .background(
                RoundedRectangle(cornerRadius: .infinity)
                    .fill(backgroundColor)
            )
    }
}
