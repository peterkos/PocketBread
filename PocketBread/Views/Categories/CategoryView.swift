//
//  CategoryView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import Charts
import SwiftUI

/// View of an individual, collapsed category (i.e., on category list)
struct CategoryView: View {
    var category: Category
    var showName = true

    var body: some View {
        VStack(alignment: .leading) {
            if showName {
                Text(category.name)
                    .bold()
            }
            ProgressBar(category: category)
                .frame(height: 40)
        }
    }
}

#Preview {
    List {
        let oneOfEach = MockService(.basicBudget).getCategories()
        ForEach(oneOfEach) { category in
            CategoryView(category: category)
        }
    }
}
