//
//  MainView.swift
//  Project_03_Working_Structure
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct MainView: View {
    @State private var counter = 0
    @State private var showGameView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Text("Counter: \(counter)")
                
                Button("Increase Counter") {
                    counter = counter + 1
                }
                
                Divider()
                
                Button("Start Game") {
                    showGameView = true
                }
                .navigationTitle("Main Page")
                .navigationDestination(isPresented: $showGameView) {
                    GameView()
                }
            }
            
        }
    }
}

#Preview {
    MainView()
}
