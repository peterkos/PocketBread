//
//  Category.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation

struct Category {
    var name: String
    var targetAmount: Int
    var actualAmount: Int
}

extension Category {
    static func makeWithNoAmount() -> Category {
        Category(name: "Food",
                 targetAmount: 100,
                 actualAmount: 0)
    }

    static func makeWithHalfSpent() -> Category {
        Category(name: "Food",
                 targetAmount: 100,
                 actualAmount: 50)
    }

    static func makeWithFullBudget() -> Category {
        Category(name: "Food",
                 targetAmount: 100,
                 actualAmount: 100)
    }

    static func makeWithOverspent() -> Category {
        Category(name: "Food",
                 targetAmount: 100,
                 actualAmount: 200)
    }
}
