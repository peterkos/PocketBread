//
//  MockService.swift
//  PocketBread
//
//  Created by Peter Kos on 11/25/23.
//

import Foundation

struct MockService: BreadService {
    enum BudgetType {
        case basicBudget
        case oneOfEachCategory
    }

    let budgetType: BudgetType

    private var categories: [Category] {
        switch budgetType {
        case .basicBudget: BasicBudget.categories
        case .oneOfEachCategory: OneOfEachCategory.categories
        }
    }

    private var transactions: [Transaction] {
        switch budgetType {
        case .basicBudget: BasicBudget.transactions
        case .oneOfEachCategory: OneOfEachCategory.transactions
        }
    }

    
    init(_ budgetType: BudgetType) {
        self.budgetType = budgetType
    }


    // MARK: BreadService

    func getCategories() -> [Category] {
        return categories
    }

    func getTransactions() -> [Transaction] {
        return transactions
    }
}
