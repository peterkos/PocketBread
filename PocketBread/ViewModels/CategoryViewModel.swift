//
//  CategoryViewModel.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Foundation

struct CategoryViewModel {
    var categories: [Category]

    init(categories: [Category]) {
        self.categories = categories
    }

    init() {
        self.init(categories: [])
    }
}
