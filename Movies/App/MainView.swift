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
            Text("Home View")
                .modifier(TabBarItem(systemName: "house.fill", textName: "House"))
            
            Text("Search View") // SearchView() will go here
                .modifier(TabBarItem(systemName: "magnifyingglass", textName: "Search"))
            
            Text("Favorites View") // FavoritesView() will go here
                .modifier(TabBarItem(systemName: ".", textName: "Favorites"))
            
            Text("Profile View") // ProfileView() will go here
                .modifier(TabBarItem(systemName: "person.fill", textName: "Profile"))
        }
        .tint(.primary)
    }
}

#Preview {
    MainView()
}
