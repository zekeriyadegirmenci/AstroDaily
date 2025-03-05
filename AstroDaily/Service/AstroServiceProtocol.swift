//
//  AstroServiceProtokol.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation

//servisler bu protokol sayesinde soyutlanır, reel ve mock implementasyonlar birbirinden bağımsız olur

protocol AstroServiceProtocol {
    func fetchPictureOfDay() async throws -> Astro
}
