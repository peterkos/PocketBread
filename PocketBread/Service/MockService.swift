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

    // MARK: BreadService

    /// By default, use BasicBudget
    func getCategories() -> [Category] {
        return BasicBudget.categories
    }

    /// By default, use BasicBudget
    func getTransactions() -> [Transaction] {
        return BasicBudget.transactions
    }

    // MARK: Convienence

    // TODO: Cleanup

    func getCategories(_ budgetType: BudgetType) -> [Category] {
        switch budgetType {
        case .basicBudget: BasicBudget.categories
        case .oneOfEachCategory: OneOfEachCategory.categories
        }
    }

    func getTransactions(_ budgetType: BudgetType) -> [Transaction] {
        switch budgetType {
        case .basicBudget: BasicBudget.transactions
        case .oneOfEachCategory: OneOfEachCategory.transactions
        }
    }
}
