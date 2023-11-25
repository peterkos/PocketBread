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
    var targetAmount: Double
    var actualAmount: Double

    var targetAmountFormatted: String {
        formatter.string(from: NSNumber(value: targetAmount)) ?? "0.00"
    }

    var actualAmountFormatted: String {
        formatter.string(from: NSNumber(value: actualAmount)) ?? "0.00"
    }

    private var formatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter
    }
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
