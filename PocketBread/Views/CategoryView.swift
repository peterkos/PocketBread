//
//  CategoryView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import SwiftUI
import Charts

struct CategoryView: View {
    var category: Category

    var body: some View {
        VStack(alignment: .leading) {
            Text(category.name)
                .bold()
            HStack {
                Text("target: \(category.targetAmount)")
                Text("actual: \(category.actualAmount)")
                Spacer()
            }
            progressBar
                .frame(height: 20)
                .clipShape(RoundedRectangle(cornerRadius: 5))
        }
    }

    private var progressBar: some View {
        Chart([category]) {
            BarMark(
                x: .value("target amount", $0.actualAmount)
            )
            .foregroundStyle(.blue)
            
            BarMark(
                x: .value("target amount", $0.targetAmount)
            )
            .foregroundStyle(.blue.opacity(20))
        }
        .chartXScale(domain: 0...category.targetAmount)
        .chartLegend(.hidden)
        .chartXAxis(.hidden)
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
