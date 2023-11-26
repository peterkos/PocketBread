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
            VStack(alignment: .trailing) {
                Text(transaction.amount.formatted)
                if let category = transaction.category {
                    // TODO: Category colors
                    ColorPill(value: category.name)
                }
            }
        }
    }
}
