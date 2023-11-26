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
    var category: Category?
    var vendor: Vendor
    var note: String?
}
