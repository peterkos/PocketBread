//
//  Amount.swift
//  PocketBread
//
//  Created by Peter Kos on 11/25/23.
//

import Foundation
import Charts

struct Amount: Equatable, Comparable, Plottable, CustomStringConvertible {

    var amount: Double
    var description: String {
        return String(amount)
    }

    // MARK: Init

    init(_ amount: Double) {
        self.amount = amount
    }
    init(_ amount: Int) {
        self.amount = Double(amount)
    }

    // MARK: Math
    static func -(lhs: Amount, rhs: Amount) -> Amount {
        return Amount(lhs.amount - rhs.amount)
    }
    static func +(lhs: Amount, rhs: Amount) -> Amount {
        return Amount(lhs.amount - rhs.amount)
    }

    // MARK: Formatters

    var formatted: String {
        formatter.string(from: NSNumber(value: amount)) ?? "0.00"
    }

    private var formatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter
    }

    // MARK: - Comparable
    static func < (lhs: Amount, rhs: Amount) -> Bool {
        return lhs.amount < rhs.amount
    }

    static func < (lhs: Amount, rhs: Double) -> Bool {
        return lhs.amount < rhs
    }
    static func > (lhs: Amount, rhs: Double) -> Bool {
        return lhs.amount > rhs
    }

    // MARK: - Plottable
    var primitivePlottable: Double {
        amount
    }

    init?(primitivePlottable: Double) {
        amount = primitivePlottable
    }

    typealias PrimitivePlottable = Double
}

