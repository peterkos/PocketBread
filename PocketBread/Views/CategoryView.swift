//
//  CategoryView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Charts
import SwiftUI

struct CategoryView: View {
    var category: Category

    var body: some View {
        VStack(alignment: .leading) {
            Text(category.name)
                .bold()
            ProgressBar(category: category)
                .frame(height: 40)
        }
    }
}

#Preview {
    List {
        CategoryView(category: .makeWithNoAmount())
        CategoryView(category: .makeWithHalfSpent())
        CategoryView(category: .makeWithFullBudget())
        CategoryView(category: .makeWithOverspent())
    }
}
