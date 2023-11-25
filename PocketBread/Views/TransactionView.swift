//
//  TransactionView.swift
//  PocketBread
//
//  Created by Peter Kos on 11/25/23.
//

import SwiftUI

struct TransactionView: View {
    var transaction: Transaction

    var body: some View {
        HStack {
            Text(transaction.name)
            Spacer()
            Text(transaction.amount.formatted)
        }
    }
}

#Preview {
    List {
        TransactionView(transaction: .makeBurgerFood())
    }
}
