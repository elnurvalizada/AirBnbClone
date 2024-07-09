//
//  TabBarView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 08.07.24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    TabBarView()
}
