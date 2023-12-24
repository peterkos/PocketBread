//
//  ActionSection.swift
//  PocketBread
//
//  Created by Peter Kos on 12/24/23.
//

import SwiftUI

struct ActionSection: View {
    var body: some View {
        Section {
            HStack(spacing: 10) {
                actionButton(title: "Log new") {}
                actionButton(title: "Log new") {}
            }
            .padding(10)
            .listRowInsets(EdgeInsets())
        } header: {
            Text("Actions")
                .font(.headline)
        }
    }

    @ViewBuilder
    private func actionButton(title: String, action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                VStack(spacing: 5) {
                    Image(systemName: "plus.circle")
                    Text(title)
                }
                Spacer()
            }
        }
        .padding(10)
        .foregroundStyle(.white)
        .background(
            RoundedRectangle(cornerRadius: 15.0)
                .fill(.gray)
        )
    }
}
