//
//  AstroDetailView.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 5.03.2025.
//

import SwiftUI
import Kingfisher

struct AstroDetailView: View {
    let astro:Astro
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        NavigationLink {
                            AstroHDView(astro: astro)
                        } label: {
                            Text("Click for high resolution")
                                .underline()
                        }
                        
                        KFImage(URL(string: astro.url))
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .padding(.bottom)
                        
                        Text(astro.title)
                            .font(.title)
                            .bold()
                        
                        Text("Date: \(astro.date)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        if let copyright = astro.copyright {
                            Text("By: \(copyright)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Text(astro.explanation)
                            .font(.body)
                            .lineSpacing(5)
                    }
                    .padding()
                }
                .navigationTitle(astro.title)
                .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AstroDetailView(astro: MockAstroService().mockData)
}
