//
//  Transaction.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation

struct Transaction: Identifiable {
    var id: UUID
    var name: String
    var date: Date
    var amount: Amount
    var category: Category
    var vendor: Vendor
    var note: String
}

extension Transaction {
    static func makeBurgerFood() -> Transaction {
        let category = Category(
            name: "Food",
            targetAmount: Amount(0),
            actualAmount: Amount(0)
        )
        return Transaction(
            id: .init(),
            name: "Burger",
            date: Date.now,
            amount: Amount(12.00),
            category: category,
            vendor: Vendor(id: .init(), name: "McRicky's"),
            note: "Yummy!"
        )
    }
}
