//
//  MockAstroService.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//



import Foundation

enum MockError: Error {
    case simulatedError
}

class MockAstroService: AstroServiceProtocol{
    
     let mockData: Astro
    
    init() {
        self.mockData = Astro(copyright: "blabla", date: "12-12-2025", explanation: "This is a mock description of a beautiful moon image.", title: "Mock Moon", url: "https://example.com/mock-moon.jpg", hdurl: "rekgjelrg")
    }
    
    func fetchPictureOfDay() async throws -> Astro {
        return self.mockData
    }
    
    
}

