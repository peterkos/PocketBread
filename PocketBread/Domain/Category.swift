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
