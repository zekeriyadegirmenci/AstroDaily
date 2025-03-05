//
//  AstroHDView.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 5.03.2025.
//

import SwiftUI
import Kingfisher

struct AstroHDView: View {
    
    let astro:Astro
    
    var body: some View {
        ZStack{
            ProgressView {
                Text("Wait for high resolution")
            }
            
            if let astroHD = astro.hdurl {
                KFImage(URL(string: astroHD))
                    .resizable()
                    .scaledToFill()
            }else {
                    Text("High resolution image not found")
                }
        }
    }
}
#Preview {
    AstroHDView(astro: MockAstroService().mockData)
}
