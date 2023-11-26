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
                Section(content: {
                    ForEach(viewModel.categoryViewModel.categories) { category in
                        CategoryView(category: category)
                    }
                }, header: {
                    Text("Categories")
                        .font(.headline)
                })
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
        .navigationTitle("PocketBread")
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            viewModel.load()
        }
    }
}
