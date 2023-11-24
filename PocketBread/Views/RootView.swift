//
//  RootView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import SwiftUI

struct RootView: View {
    var viewModel: RootViewModel

    var body: some View {
        VStack {
            Text("Root View")

            // list of categories
            // progress bar of each category
            List {
                Section(content: {
                }, header: {
                    Text("Categories")
                        .font(.headline)
                })
            }
        }
    }
}

#Preview {
    RootView(viewModel: RootViewModel())
}
