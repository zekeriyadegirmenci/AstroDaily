//
//  AstroService.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation

final class AstroNetworkService: AstroServiceProtocol {
    
    private let apiKey = APIKey.shared.key
    private let baseURL = "https://api.nasa.gov/planetary/apod"
    
    func fetchPictureOfDay() async throws -> Astro {
        let url = "\(baseURL)?api_key=\(apiKey)"
        
        guard let url = URL(string: url) else {
            throw AstroServiceError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let astro = try JSONDecoder().decode(Astro.self, from: data)
            print(astro)
            return astro
        } catch {
            print("error3")
            throw AstroServiceError.decodingError(error)
        }
    }
}
