//
//  AstroDailyApp.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import SwiftUI

@main
struct AstroDailyApp: App {
    
    private let dependencies = AppDependencies(configuration: ProductionConfiguration())
    
    var body: some Scene {
        WindowGroup {
            AstroListView(viewModel: dependencies.astroViewModel)
        }
    }
}
