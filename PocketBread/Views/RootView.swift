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
        NavigationStack {
            VStack {
                List {
                    CategoryListView(
                        viewModel: $viewModel.categoryViewModel
                    )
                    TransactionListView(
                        viewModel: $viewModel.transactionViewModel
                    )
                }
            }
        }
        .navigationTitle("PocketBread")
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            viewModel.load()
        }
    }
}

#Preview {
    RootView(viewModel: .init(
        service: MockService(.basicBudget))
    )
}
