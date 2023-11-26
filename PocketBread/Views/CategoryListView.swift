//
//  CategoryListview.swift
//  PocketBread
//
//  Created by Peter Kos on 11/26/23.
//

import SwiftUI

struct CategoryListView: View {

    @Binding var viewModel: CategoryViewModel
    @State var isConfigSheetDisplayed = false

    var body: some View {
        Section(content: {
            ForEach(viewModel.categories) { category in
                CategoryView(category: category)
            }
        }, header: {
            HStack {
                Text("Categories")
                    .font(.headline)
                Spacer()
                Button(action: {
                    isConfigSheetDisplayed.toggle()
                }, label: {
                    Image(systemName: "gearshape.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                })
            }
            .padding(.vertical, 5)
        })
        .sheet(isPresented: $isConfigSheetDisplayed, content: {
            CategoryConfigSheet()
        })
    }
}

struct CategoryConfigSheet: View {

    var body: some View {
        Text("hi!")
    }
}



#Preview {
    let service = MockService(.oneOfEachCategory)
    let viewModel: Binding<CategoryViewModel> = .constant(.init(categories: service.getCategories()))

    return List {
        CategoryListView(viewModel: viewModel)
    }
}
