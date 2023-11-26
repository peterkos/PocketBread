//
//  RootView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import SwiftUI

struct RootView: View {
    @StateObject var viewModel: RootViewModel

    init(viewModel: RootViewModel) {
        _viewModel = .init(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            List {
                categorySection
                transactionSection
            }
        }
        .navigationTitle("PocketBread")
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            viewModel.load()
        }
    }

    private var categorySection: some View {
        Section(content: {
            ForEach(viewModel.categoryViewModel.categories) { category in
                CategoryView(category: category)
            }
        }, header: {
            HStack {
                Text("Categories")
                    .font(.headline)
            }
        })
    }

    private var transactionSection: some View {
        Section(content: {
            ForEach(viewModel.transactionViewModel.transactions) { transaction in
                TransactionView(transaction: transaction)
            }
        }, header: {
            Text("Recent Transactions")
                .font(.headline)
        })
    }
}

#Preview {
    RootView(viewModel: .init(
        service: MockService(.basicBudget))
    )
}
