//
//  ProgressBarView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/25/23.
//

import Charts
import SwiftUI

struct ProgressBar: View {
    var category: Category

    var body: some View {
        Chart([category]) {
            if $0.actualAmount < $0.targetAmount {
                BarMark(x: .value("target amount", $0.actualAmount))
                    .foregroundStyle(.blue)
            } else if $0.actualAmount == $0.targetAmount {
                BarMark(x: .value("target amount", $0.targetAmount))
                    .foregroundStyle(.yellow)
            } else {
                BarMark(x: .value("target amount", $0.targetAmount))
                    .foregroundStyle(.red)
            }

            let diff = $0.targetAmount - $0.actualAmount
            if diff > 0 {
                BarMark(x: .value("target amount remaining", diff))
                    .foregroundStyle(.blue.opacity(20))
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .chartPlotStyle(content: { content in
            content.clipShape(RoundedRectangle(cornerRadius: 10))
        })
        .chartXScale(domain: 0 ... category.targetAmount)
        .chartLegend(.hidden)
        .chartXAxis {
            let interestPoints: [Double] = [0.0, category.actualAmount, category.targetAmount]
            AxisMarks(values: interestPoints) { value in
                if let num = value.as(Double.self) {
                    AxisValueLabel(multiLabelAlignment: .leading) {
                        switch num {
                        case category.actualAmount: Text(category.actualAmountFormatted)
                        case category.targetAmount: Text(category.targetAmountFormatted)
                        default: Text("")
                        }
                    }
                    .font(.body.smallCaps())
                }
            }
            if category.actualAmount < category.targetAmount {
                AxisMarks(values: [category.actualAmount]) {
                    AxisGridLine(stroke: StrokeStyle(lineWidth: 1))
                    AxisTick(stroke: StrokeStyle(lineWidth: 1))
                }
            }
        }
    }
}
