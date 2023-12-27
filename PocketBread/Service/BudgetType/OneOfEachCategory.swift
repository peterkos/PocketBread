//
//  OneOfEachCategory.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import Foundation

enum OneOfEachCategory {
    static var categories: [Category] {
        [
            Category(
                name: "ZeroAmount",
                targetAmount: Amount(100),
                actualAmount: Amount(0)
            ),
            Category(
                name: "HalfTarget",
                targetAmount: Amount(100),
                actualAmount: Amount(50)
            ),
            Category(
                name: "Full",
                targetAmount: Amount(100),
                actualAmount: Amount(100)
            ),
            Category(
                name: "Overspent",
                targetAmount: Amount(100),
                actualAmount: Amount(150)
            ),
        ]
    }

    static var transactions: [Transaction] {
        return [
            Transaction(
                id: .init(),
                vendor: Vendor(id: .init(), name: "McRicky's"),
                date: Date.now,
                amount: Amount(12.00),
                category: categories[1],
                note: "Yummy!"
            ),
        ]
    }
}
