//
//  PocketBreadApp.swift
//  PocketBread
//
//  Created by Peter Kos on 11/24/23.
//

import SwiftUI

@main
struct PocketBreadApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                let mockService = MockService(.basicBudget)
                RootView(viewModel: RootViewModel(service: mockService))
            }
        }
    }
}
