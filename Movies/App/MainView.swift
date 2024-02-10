//
//  MainView.swift
//  Movies
//
//  Created by Denis DRAGAN on 10.02.2024.
//

import SwiftUI

struct TabBarItem: ViewModifier {
    let systemName: String
    let textName: String
    
    func body(content: Content) -> some View {
        content
            .tabItem {
                Image(systemName: systemName)
                Text(textName)
            }
    }
}

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .modifier(TabBarItem(systemName: "house.fill", textName: "House"))
            
            SearchView()
                .modifier(TabBarItem(systemName: "magnifyingglass", textName: "Search"))
            
            FavoritesView()
                .modifier(TabBarItem(systemName: "heart.fill", textName: "Favorites"))
            
            ProfileView()
                .modifier(TabBarItem(systemName: "person.fill", textName: "Profile"))
        }
        .tint(.primary)
    }
}

#Preview {
    MainView()
}
