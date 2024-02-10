//
//  HomeView.swift
//  Movies
//
//  Created by Denis DRAGAN on 10.02.2024.
//

import SwiftUI

struct TextItem: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.orange)
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 8)
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            ScrollView {
                Rectangle()
                    .frame(height: 400)
                
                Text("Trending Movies")
                    .modifier(TextItem())
                ImageRowView()
                
                Text("Popular")
                    .modifier(TextItem())
                ImageRowView()
                
                Text("Upcoming Movies")
                    .modifier(TextItem())
                ImageRowView()
                
                Text("Top Rated")
                    .modifier(TextItem())
                ImageRowView()
            }
            .scrollIndicators(.never)
        }
    }
}

#Preview {
    HomeView()
}
