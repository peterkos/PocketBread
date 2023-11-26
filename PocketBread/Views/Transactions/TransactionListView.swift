//
//  TransactionListView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import SwiftUI

struct TransactionListView: View {
    @Binding var viewModel: TransactionViewModel

    var body: some View {
        Section(content: {
            ForEach(viewModel.transactions) { transaction in
                NavigationLink(
                    destination: TransactionDetailView(transaction: transaction),
                    label: {
                        TransactionView(transaction: transaction)
                    }
                )
            }
        }, header: {
            Text("Recent Transactions")
                .font(.headline)
        })
    }
}
