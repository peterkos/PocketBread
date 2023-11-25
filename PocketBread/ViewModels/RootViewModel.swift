//
//  RootViewModel.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation

struct RootViewModel {
    var categoryViewModel = CategoryViewModel()
    var transactionViewModel = TransactionViewModel()
}

extension RootViewModel {
    static func makeWithDefaultStuff() -> RootViewModel {
        let categories: [Category] = [
            .makeWithHalfSpent(),
            .makeWithFullBudget(),
            .makeWithNoAmount()
        ]
        let transactions: [Transaction] = [
            .makeBurgerFood(),
            .makeBurgerFood(),
            .makeBurgerFood(),
            .makeBurgerFood(),
        ]
        return RootViewModel(
            categoryViewModel: .init(categories: categories),
            transactionViewModel: .init(transactions: transactions)
        )
    }
}
