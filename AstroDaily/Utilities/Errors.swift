//
//  AstroServiceError.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation


enum AstroServiceError: Error {
    case invalidURL
    case invalidResponse
    case decodingError(Error)
    
    var localizedDescription: String {
        switch self {
        case .invalidURL: return "Invalid URL"
        case .invalidResponse: return "Server error occurred"
        case .decodingError(let error): return "Decoding failed: \(error.localizedDescription)"
        }
    }
}
