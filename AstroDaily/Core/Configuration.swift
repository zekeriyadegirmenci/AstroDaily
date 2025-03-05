//
//  Configuration.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation

protocol ConfigurationProtocol {
    var astroService: AstroServiceProtocol { get }
}

//protocolü benimsedigi icin astroserviceyi alacak. Ürün configimiz
struct ProductionConfiguration: ConfigurationProtocol {
    let astroService: AstroServiceProtocol = AstroNetworkService()
}

// development configimiz
struct DevelopmentConfiguration: ConfigurationProtocol {
    let astroService: AstroServiceProtocol = MockAstroService()
}
