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
                name: "Burger",
                date: Date.now,
                amount: Amount(12.00),
                category: categoriesDict["Food"],
                vendor: Vendor(id: .init(), name: "McRicky's"),
                note: "Yummy!"
            ),
            Transaction(
                id: .init(),
                name: "Pizza",
                date: Date.now,
                amount: Amount(24.00),
                category: categoriesDict["Food"],
                vendor: Vendor(id: .init(), name: "Ricky's Pizza")
            ),
            Transaction(
                id: .init(),
                name: "Lord of the Rings",
                date: Date.now,
                amount: Amount(6.00),
                category: categoriesDict["Entertainment"],
                vendor: Vendor(id: .init(), name: "Films with Ricky")
            ),
            Transaction(
                id: .init(),
                name: "Rent",
                date: Date.now,
                amount: Amount(2000.00),
                category: categoriesDict["Rent"],
                vendor: Vendor(id: .init(), name: "Ricky's Apartments"),
                note: "Utilities separate"
            ),
        ]
    }
}
