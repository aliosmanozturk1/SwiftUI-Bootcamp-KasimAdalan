//
//  GameView.swift
//  Project_03_Working_Structure
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct GameView: View {
    @Environment(\.presentationMode) var pm
    @State private var showResultView: Bool = false

    var kisi = Kisiler()
    
    var body: some View {
        VStack(spacing: 40) {
            
            Text("\(kisi.isim!), \(kisi.yas!), \(kisi.boy!), \(kisi.bekar!)")
            
            Button("Finish") {
                showResultView = true
            }
            
            Button("Back") {
                pm.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Game Page")
        .sheet(isPresented: $showResultView) {
            ResultView()
        }
    }
}

#Preview {
    GameView()
}
