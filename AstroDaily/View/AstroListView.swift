//
//  AstroListView.swift
//  AstroDaily
//
//  Created by Zekeriya Değirmenci on 4.03.2025.
//

import SwiftUI

struct AstroListView: View {
    @StateObject private var viewModel: AstroViewModel
    
    init(viewModel: AstroViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Today's Astronomical Picture")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                if let astro = viewModel.astro{
                    NavigationLink {
                        AstroDetailView(astro: astro)
                    } label: {
                        AstroCardView(astro: astro)
                    }
                    
                    
                } else {
                    ProgressView("Fetching picture of the day...")
                }
                
            }.navigationTitle("Astro Daily")
            
        }
    }
}

#Preview {
    AstroListView(viewModel: AstroViewModel(astroService: AstroNetworkService()))
}
