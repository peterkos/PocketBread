//
//  TransactionViewModel.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation

struct TransactionViewModel {
    var transactions: [Transaction]

    init(transactions: [Transaction]) {
        self.transactions = transactions
    }

    init() {
        self.init(transactions: [])
    }
}
