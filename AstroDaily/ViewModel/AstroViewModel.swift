//
//  AstroViewModel.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation

final class AstroViewModel: ObservableObject {
    @Published var astro: Astro?
    
    private let astroService:AstroServiceProtocol
    
    //    dışarıdan enjekte ettik astroserviceyi,viewmodel hangi servisin kullanılacağını bilmez, sadece miras aldıgı protokolü bilir. View kısmında ise biz belirleriz mockservicenin mi yoksa networkservicenin kullanılacagını mı
    
    init(astroService: AstroServiceProtocol) {
        self.astroService = astroService
        Task { await fetchAstro() }
    }
    
    @MainActor
    func fetchAstro() async {
        do {
            let astroData = try await astroService.fetchPictureOfDay()
            self.astro = astroData
        } catch {
            print("DEBUG: Error fetching data: \(error.localizedDescription)")
        }
    }
}
