//
//  TransactionDetailView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import SwiftUI

struct TransactionDetailView: View {
    var transaction: Transaction

    var body: some View {
        List {
            detailRow(
                label: "Date",
                value: transaction.date.formatted(date: .abbreviated, time: .omitted)
            )
            detailRow(
                label: "Time",
                value: transaction.date.formatted(date: .omitted, time: .complete)
            )
            detailRow(label: "Amount", value: transaction.amount.formatted)

            // Category
            if let categoryName = transaction.category?.name {
                detailRow(label: "Category") {
                    ColorPill(value: categoryName)
                }
            } else {
                detailRow(
                    label: "Category",
                    value: "No category"
                )
            }

            
            detailRow(label: "Note", value: transaction.note ?? "")
            detailRow(label: "id", value: transaction.id.description)
        }
        .navigationTitle(transaction.vendor.name)
        .navigationBarTitleDisplayMode(.large)
    }

    @ViewBuilder
    private func detailRow(label: String, value: String) -> some View {
        HStack {
            Text(label)
            Spacer()
            Text(value)
        }
    }

    // grr https://serialcoder.dev/text-tutorials/swiftui/using-the-viewbuilder-attribute-to-implement-swiftui-views-in-methods/
    @ViewBuilder
    private func detailRow<Content: View>(
        label: String,
        content: @escaping () -> Content
    ) -> some View {
        HStack {
            Text(label)
            Spacer()
            content()
        }
    }
}

#Preview {
    let transactions = MockService(.basicBudget).getTransactions()
    return NavigationStack {
        TransactionDetailView(transaction: transactions[0])
    }
}
