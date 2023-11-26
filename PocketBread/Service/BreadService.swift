//
//  BreadService.swift
//  PocketBread
//
//  Created by Peter Kos on 11/25/23.
//

import Foundation

/// Descirbes a generic service. Create prod/mock/etc. off of this.
protocol BreadService {
    func getCategories() -> [Category]
    func getTransactions() -> [Transaction]
}
