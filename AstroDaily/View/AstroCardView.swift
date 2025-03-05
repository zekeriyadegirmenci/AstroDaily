//
//  AstroCardView.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import SwiftUI
import Kingfisher

struct AstroCardView: View {
    let astro: Astro
    
    var body: some View {
        VStack {
            KFImage(URL(string: astro.url))
                .resizable()
                .scaledToFit()
            
            Text(astro.title)
                .font(.headline)
                .padding()
        }
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    AstroCardView(astro: MockAstroService().mockData)
}
