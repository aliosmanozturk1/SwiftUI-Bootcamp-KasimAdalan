//
//  TabView.swift
//  Project_03_Working_Structure
//
//  Created by Ali Osman Öztürk on 11.05.2025.
//

import SwiftUI

struct MyTabView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
    }
    
    func renkDegistir(itemAppearance: UITabBarItemAppearance) {
        // Seçili olan tab için.
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        
        // Seçili olmayan tab için.
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationStack {
            TabView {
                HomePage()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SettingsPage()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            .navigationTitle("Tab View")
        }
    }
}

#Preview {
    MyTabView()
}
