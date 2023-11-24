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
            RootView(viewModel: RootViewModel())
        }
    }
}
