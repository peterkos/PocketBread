//
//  BasicBudget.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import Foundation

enum BasicBudget {
    static var categories: [Category] {
        [
            Category(
                name: "Food",
                targetAmount: Amount(100),
                actualAmount: Amount(0)
            ),
            Category(
                name: "Entertainment",
                targetAmount: Amount(100),
                actualAmount: Amount(50)
            ),
            Category(
                name: "Rent",
                targetAmount: Amount(100),
                actualAmount: Amount(100)
            ),
        ]
    }

    static var transactions: [Transaction] {
        // Create dict indexed by name
        // Allows for use of `categories["Food"]` in transactions below :)
        let categoriesDict: [String: Category] = Dictionary(
            uniqueKeysWithValues: categories.map { ($0.name, $0) }
        )

        return [
            Transaction(
                id: .init(),
                vendor: Vendor(id: .init(), name: "McRicky's"),
                date: Date.now,
                amount: Amount(12.00),
                category: categoriesDict["Food"],
                note: "Yummy!"
            ),
            Transaction(
                id: .init(),
                vendor: Vendor(id: .init(), name: "Ricky's Pizza"),
                date: Date.now,
                amount: Amount(24.00),
                category: categoriesDict["Food"]
            ),
            Transaction(
                id: .init(),
                vendor: Vendor(id: .init(), name: "Films with Ricky"),
                date: Date.now,
                amount: Amount(6.00),
                category: categoriesDict["Entertainment"]
            ),
            Transaction(
                id: .init(),
                vendor: Vendor(id: .init(), name: "Ricky's Apartments"),
                date: Date.now,
                amount: Amount(2000.00),
                category: categoriesDict["Rent"],
                note: "Utilities separate"
            ),
        ]
    }
}
