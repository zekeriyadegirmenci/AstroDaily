//
//  Astro.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import Foundation

struct Astro: Codable {
    
    let copyright:String?
    let date:String
    let explanation:String
    let title:String
    let url: String // Düşük çözünürlüklü URL
    let hdurl: String? // Yüksek çözünürlüklü URL (opsiyonel)
    
}
