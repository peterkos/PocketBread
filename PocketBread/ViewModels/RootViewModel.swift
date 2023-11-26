//
//  RootViewModel.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation
import SwiftUI

class RootViewModel: ObservableObject {
    @Published var categoryViewModel = CategoryViewModel()
    @Published var transactionViewModel = TransactionViewModel()

    var service: any BreadService

    init(service: any BreadService) {
        self.service = service
    }

    func load() {
        categoryViewModel.categories = service.getCategories()
        transactionViewModel.transactions = service.getTransactions()
    }
}
