//
//  Category.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation

struct Category: Identifiable {
    var id: UUID = .init() // TODO: this might not be stable?
    var name: String
    var targetAmount: Amount
    var actualAmount: Amount
}

extension Category {
    static func makeWithNoAmount() -> Category {
        Category(name: "Food",
                 targetAmount: Amount(100),
                 actualAmount: Amount(0))
    }

    static func makeWithHalfSpent() -> Category {
        Category(name: "Food",
                 targetAmount: Amount(100),
                 actualAmount: Amount(50))
    }

    static func makeWithFullBudget() -> Category {
        Category(name: "Food",
                 targetAmount: Amount(100),
                 actualAmount: Amount(100))
    }

    static func makeWithOverspent() -> Category {
        Category(name: "Food",
                 targetAmount: Amount(100),
                 actualAmount: Amount(200))
    }
}
