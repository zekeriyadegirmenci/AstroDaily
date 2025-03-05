//
//  AppDependencies.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation

struct AppDependencies {
    let astroService: AstroServiceProtocol
    let astroViewModel: AstroViewModel
    
    
//    ister production, ister developmenti kullan
    init(configuration: ConfigurationProtocol) {
        self.astroService = configuration.astroService
        self.astroViewModel = AstroViewModel(astroService: astroService)
    }
}


