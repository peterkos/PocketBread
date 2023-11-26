//
//  TransactionView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/25/23.
//

import SwiftUI

struct TransactionView: View {
    var transaction: Transaction

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(transaction.name)
                    .font(.body.bold())
                Text(transaction.vendor.name)
                    .font(.body.italic())
                Text(transaction.date.formatted())
            }
            Spacer()
            VStack(alignment: .leading) {
                Text(transaction.amount.formatted)
                if let category = transaction.category {
                    categoryLabel(category)
                }
            }
        }
    }

    @ViewBuilder
    private func categoryLabel(_ category: Category) -> some View {
        Text(category.name)
            .padding(.horizontal, 6)
            .padding(.bottom, 2) // grr, line height
            .font(.body.smallCaps())
            .foregroundStyle(.white)
            .background(
                RoundedRectangle(cornerRadius: .infinity)
                    .fill(.blue)
            )
    }
}
