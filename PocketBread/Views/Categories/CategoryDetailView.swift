//
//  CategoryDetailView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import SwiftUI

struct CategoryDetailView: View {
    var category: Category

    var body: some View {
        List {
            CategoryView(category: category, showName: false)
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    let categories = MockService(.oneOfEachCategory).getCategories()
    return
        CategoryDetailView(category: categories[0])
}
